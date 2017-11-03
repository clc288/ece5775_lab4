//==========================================================================
//layer.cpp
//==========================================================================
// @brief: this file contains all layers

#include <stdio.h>

#include "model_conv.h"
#include "layer.h"

//----------------------------------------------------------
// Perform Convolution Layer
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              weight - filters
//              bias - biases
//              M - number of input fmaps
//              N - number of output fmaps
//              O - width of output fmaps
// @param[out] : output - output fmaps

void perform_conv(fixed16_t input[MAX_FMAP], fixed16_t output[MAX_FMAP], const fixed16_t weight[MAX_W_CONV], const fixed16_t bias[MAX_B_CONV], int M, int N, int O) {

  int I = O+K-1;
  int ifmap_size = I*I;
  int ofmap_size = O*O;

  // initialize output fmaps
  for (int i = 0; i < MAX_FMAP; i++) output[i] = 0;

  // perform convolution kernel
  for (int n = 0; n < N; n++) {
    for (int m = 0; m < M; m++) {
      for (int x = 0; x < O; x++) {
        for (int y = 0; y < O; y++) {
          for (int c = 0; c < K; c++) {
            for (int r = 0; r < K; r++) {
              int i_index = x + c + (y + r) * I + m * ifmap_size;
              int w_index = c + r * K + (n * M + m) * FILTER_SIZE;
              int o_index = x + y * O + n * ofmap_size;
              //TODO: finish the innermost loop
              output[o_index] = output[o_index] + input[i_index] * weight[w_index];
            }
          }
        }
      }
    }
  }
 
  // add biases and perform ReLU
  for (int n = 0; n < N; n++) {
    for (int x = 0; x < O; x++) {
      for (int y = 0; y < O; y++) {
        int index = x + y * O + n * ofmap_size;
        fixed16_t biased = output[index] + bias[n];
        output[index] = (biased > 0) ? biased : (fixed16_t)0; 
      }
    }
  }
 
}

//----------------------------------------------------------
// Reshpae the Output from Conv Layer
//----------------------------------------------------------
// @param[in] : input - output fmaps from the last conv layer
// @param[out] : output - input famps of the first dense layer

void reshape(float* input, float* output) {
  for (int c = 0; c < 64; c++) {
    for (int y = 0; y < 3; y++) {
      for (int x = 0; x < 3; x++) {
        int o_index = c + (2 - x + (2-y) * 3 ) * 64;
        int i_index = x + y * 3 + c * 9;
        output[o_index] = input[i_index];
      }
    }
  }
}

//----------------------------------------------------------
// Perform Dense Layer
//----------------------------------------------------------
// @param[in] : input - input fmaps
//              weight - weights
//              bias - biases
//              M - number of input fmaps
//              N - number of output fmaps
// @param[out] : output - output fmaps

void perform_dense (float* input, float*output, const float*weight, const float* bias, int M, int N) {

  for (int n = 0; n < N; n++) {
    for (int m = 0; m < M; m++) {
      int w_index = m + n * M;
      output[n] += input[m] * weight[w_index];
    }
    float biased = output[n] + bias[n];
    output[n] = (biased > 0) ? biased : 0;
  }

}

