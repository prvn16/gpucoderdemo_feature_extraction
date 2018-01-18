/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * SurfDetect_terminate.cu
 *
 * Code generation for function 'SurfDetect_terminate'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "SurfDetect.h"
#include "SurfDetect_terminate.h"
#include "_coder_SurfDetect_mex.h"
#include "SurfDetect_data.h"

/* Function Definitions */
void SurfDetect_atexit(void)
{
  mexFunctionCreateRootTLS();
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void SurfDetect_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (SurfDetect_terminate.cu) */
