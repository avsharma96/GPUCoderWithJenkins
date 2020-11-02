//
//  mandelbrot_count_initialize.cu
//
//  Code generation for function 'mandelbrot_count_initialize'
//


// Include files
#include "mandelbrot_count_initialize.h"
#include "_coder_mandelbrot_count_mex.h"
#include "mandelbrot_count.h"
#include "mandelbrot_count_data.h"
#include "rt_nonfinite.h"

// Function Definitions
void mandelbrot_count_initialize()
{
  mex_InitInfAndNan();
  mexFunctionCreateRootTLS();
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, false, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLicenseCheckR2012b(emlrtRootTLSGlobal, "Distrib_Computing_Toolbox", 2);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
  cudaGetLastError();
}

// End of code generation (mandelbrot_count_initialize.cu)
