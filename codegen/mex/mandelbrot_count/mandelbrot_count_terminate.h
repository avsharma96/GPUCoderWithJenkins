//
//  mandelbrot_count_terminate.h
//
//  Code generation for function 'mandelbrot_count_terminate'
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
CODEGEN_EXPORT_SYM void mandelbrot_count_atexit();
CODEGEN_EXPORT_SYM void mandelbrot_count_terminate();

// End of code generation (mandelbrot_count_terminate.h)
