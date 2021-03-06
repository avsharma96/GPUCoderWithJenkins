//
//  _coder_mandelbrot_count_api.cu
//
//  Code generation for function '_coder_mandelbrot_count_api'
//


// Include files
#include "_coder_mandelbrot_count_api.h"
#include "mandelbrot_count.h"
#include "mandelbrot_count_data.h"
#include "rt_nonfinite.h"

// Function Declarations
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static real_T (*c_emlrt_marshallIn(const mxArray *xGrid, const char_T
  *identifier))[1000000];
static real_T (*d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[1000000];
static real_T e_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);
static real_T emlrt_marshallIn(const mxArray *maxIterations, const char_T
  *identifier);
static const mxArray *emlrt_marshallOut(const real_T u[1000000]);
static real_T (*f_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId))[1000000];

// Function Definitions
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId)
{
  real_T y;
  y = e_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*c_emlrt_marshallIn(const mxArray *xGrid, const char_T
  *identifier))[1000000]
{
  real_T (*y)[1000000];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = d_emlrt_marshallIn(emlrtAlias(xGrid), &thisId);
  emlrtDestroyArray(&xGrid);
  return y;
}
  static real_T (*d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier *
  parentId))[1000000]
{
  real_T (*y)[1000000];
  y = f_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T e_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId)
{
  real_T ret;
  static const int32_T dims = 0;
  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", false, 0U,
    &dims);
  ret = *(real_T *)emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T emlrt_marshallIn(const mxArray *maxIterations, const char_T
  *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = const_cast<const char *>(identifier);
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(emlrtAlias(maxIterations), &thisId);
  emlrtDestroyArray(&maxIterations);
  return y;
}

static const mxArray *emlrt_marshallOut(const real_T u[1000000])
{
  const mxArray *y;
  const mxArray *m;
  static const int32_T iv[2] = { 0, 0 };

  static const int32_T iv1[2] = { 1000, 1000 };

  y = NULL;
  m = emlrtCreateNumericArray(2, &iv[0], mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m, *(int32_T (*)[2])&iv1[0], 2);
  emlrtAssign(&y, m);
  return y;
}

static real_T (*f_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier *
  msgId))[1000000]
{
  real_T (*ret)[1000000];
  static const int32_T dims[2] = { 1000, 1000 };

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", false, 2U,
    dims);
  ret = (real_T (*)[1000000])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}
  void mandelbrot_count_api(const mxArray * const prhs[3], int32_T, const
  mxArray *plhs[1])
{
  real_T (*count)[1000000];
  real_T maxIterations;
  real_T (*xGrid)[1000000];
  real_T (*yGrid)[1000000];
  count = (real_T (*)[1000000])mxMalloc(sizeof(real_T [1000000]));

  // Marshall function inputs
  maxIterations = emlrt_marshallIn(emlrtAliasP(prhs[0]), "maxIterations");
  xGrid = c_emlrt_marshallIn(emlrtAlias(prhs[1]), "xGrid");
  yGrid = c_emlrt_marshallIn(emlrtAlias(prhs[2]), "yGrid");

  // Invoke the target function
  mandelbrot_count(maxIterations, *xGrid, *yGrid, *count);

  // Marshall function outputs
  plhs[0] = emlrt_marshallOut(*count);
}

// End of code generation (_coder_mandelbrot_count_api.cu)
