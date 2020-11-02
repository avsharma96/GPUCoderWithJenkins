//
//  mandelbrot_count_terminate.cu
//
//  Code generation for function 'mandelbrot_count_terminate'
//


// Include files
#include "mandelbrot_count_terminate.h"
#include "_coder_mandelbrot_count_mex.h"
#include "mandelbrot_count.h"
#include "mandelbrot_count_data.h"
#include "rt_nonfinite.h"

// Function Definitions
void mandelbrot_count_atexit()
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void mandelbrot_count_terminate()
{
  cudaError_t errCode;
  errCode = cudaGetLastError();
  if (errCode != cudaSuccess) {
    emlrtThinCUDAError(false, emlrtRootTLSGlobal);
  }

  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

// End of code generation (mandelbrot_count_terminate.cu)
