//===========================================================================
// layer.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef LAYER_H
#define LAYER_H

#include "typedefs.h"

// Perform convolution kernel
void perform_conv(float* input, float* output, const float* weight, const float* bias, int in_channel, int out_channel, int out_width);

// Reshape the conv layer output to dense layer input
void reshape(float* input, float* output);

// Perform dense layer
void perform_dense (float* input, float*output, const float*weight, const float* bias, int in_channel, int out_channel);

#endif
