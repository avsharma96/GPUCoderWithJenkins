//
//  _coder_mandelbrot_count_api.h
//
//  Code generation for function '_coder_mandelbrot_count_api'
//


#pragma once

// Include files
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include "mex.h"
#include "emlrt.h"
#include "rtwtypes.h"
#include "mandelbrot_count_types.h"

// Custom Header Code
#ifdef __CUDA_ARCH__
#undef printf
#endif

// Function Declarations
void mandelbrot_count_api(const mxArray * const prhs[3], int32_T nlhs, const
  mxArray *plhs[1]);

// End of code generation (_coder_mandelbrot_count_api.h)
