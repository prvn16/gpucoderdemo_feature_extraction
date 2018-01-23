/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_SurfDetect_api.c
 *
 * GPU Coder version                    : 1.0
 * CUDA/C/C++ source code generated on  : 23-Jan-2018 09:58:13
 */

/* Include Files */
#include "tmwtypes.h"
#include "_coder_SurfDetect_api.h"
#include "_coder_SurfDetect_mex.h"

/* Variable Definitions */
emlrtCTX emlrtRootTLSGlobal = NULL;
emlrtContext emlrtContextGlobal = { true,/* bFirstTime */
  false,                               /* bInitialized */
  131451U,                             /* fVersionInfo */
  NULL,                                /* fErrorFunction */
  "SurfDetect",                        /* fFunctionName */
  NULL,                                /* fRTCallStack */
  false,                               /* bDebugMode */
  { 2045744189U, 2170104910U, 2743257031U, 4284093946U },/* fSigWrd */
  NULL                                 /* fSigMem */
};

/* Function Declarations */
static uint8_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[589824];
static uint8_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[589824];
static uint8_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *inputImage, const char_T *identifier))[589824];
static const mxArray *emlrt_marshallOut(const struct0_T u_data[], const int32_T
  u_size[2]);

/* Function Definitions */

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 * Return Type  : uint8_T (*)[589824]
 */
static uint8_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId))[589824]
{
  uint8_T (*y)[589824];
  y = c_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 * Return Type  : uint8_T (*)[589824]
 */
  static uint8_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId))[589824]
{
  uint8_T (*ret)[589824];
  static const int32_T dims[3] = { 384, 512, 3 };

  emlrtCheckBuiltInR2012b(sp, msgId, src, "uint8", false, 3U, dims);
  ret = (uint8_T (*)[589824])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *inputImage
 *                const char_T *identifier
 * Return Type  : uint8_T (*)[589824]
 */
static uint8_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *inputImage, const char_T *identifier))[589824]
{
  uint8_T (*y)[589824];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(inputImage), &thisId);
  emlrtDestroyArray(&inputImage);
  return y;
}
/*
 * Arguments    : const struct0_T u_data[]
 *                const int32_T u_size[2]
 * Return Type  : const mxArray *
 */
  static const mxArray *emlrt_marshallOut(const struct0_T u_data[], const
  int32_T u_size[2])
{
  const mxArray *y;
  int32_T iv0[2];
  int32_T i;
  static const char * sv0[5] = { "x", "y", "scale", "orientation", "laplacian" };

  int32_T b_j1;
  const mxArray *b_y;
  const mxArray *m0;
  y = NULL;
  for (i = 0; i < 2; i++) {
    iv0[i] = u_size[i];
  }

  emlrtAssign(&y, emlrtCreateStructArray(2, iv0, 5, sv0));
  emlrtCreateField(y, "x");
  emlrtCreateField(y, "y");
  emlrtCreateField(y, "scale");
  emlrtCreateField(y, "orientation");
  emlrtCreateField(y, "laplacian");
  i = 0;
  for (b_j1 = 0; b_j1 < 2000; b_j1++) {
    if (b_j1 < u_size[1U]) {
      b_y = NULL;
      m0 = emlrtCreateNumericMatrix(1, 1, mxSINGLE_CLASS, mxREAL);
      *(real32_T *)emlrtMxGetData(m0) = u_data[u_size[0] * b_j1].x;
      emlrtAssign(&b_y, m0);
      emlrtSetFieldR2017b(y, i, "x", b_y, 0);
      b_y = NULL;
      m0 = emlrtCreateNumericMatrix(1, 1, mxSINGLE_CLASS, mxREAL);
      *(real32_T *)emlrtMxGetData(m0) = u_data[u_size[0] * b_j1].y;
      emlrtAssign(&b_y, m0);
      emlrtSetFieldR2017b(y, i, "y", b_y, 1);
      b_y = NULL;
      m0 = emlrtCreateNumericMatrix(1, 1, mxSINGLE_CLASS, mxREAL);
      *(real32_T *)emlrtMxGetData(m0) = u_data[u_size[0] * b_j1].scale;
      emlrtAssign(&b_y, m0);
      emlrtSetFieldR2017b(y, i, "scale", b_y, 2);
      b_y = NULL;
      m0 = emlrtCreateNumericMatrix(1, 1, mxSINGLE_CLASS, mxREAL);
      *(real32_T *)emlrtMxGetData(m0) = u_data[u_size[0] * b_j1].orientation;
      emlrtAssign(&b_y, m0);
      emlrtSetFieldR2017b(y, i, "orientation", b_y, 3);
      b_y = NULL;
      m0 = emlrtCreateNumericMatrix(1, 1, mxINT32_CLASS, mxREAL);
      *(int32_T *)emlrtMxGetData(m0) = u_data[u_size[0] * b_j1].laplacian;
      emlrtAssign(&b_y, m0);
      emlrtSetFieldR2017b(y, i, "laplacian", b_y, 4);
      i++;
    }
  }

  return y;
}

/*
 * Arguments    : const mxArray * const prhs[1]
 *                const mxArray *plhs[1]
 * Return Type  : void
 */
void SurfDetect_api(const mxArray * const prhs[1], const mxArray *plhs[1])
{
  uint8_T (*inputImage)[589824];
  struct0_T intPoints_data[2000];
  int32_T intPoints_size[2];
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;

  /* Marshall function inputs */
  inputImage = emlrt_marshallIn(&st, emlrtAlias((const mxArray *)prhs[0]),
    "inputImage");

  /* Invoke the target function */
  SurfDetect(*inputImage, intPoints_data, intPoints_size);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(intPoints_data, intPoints_size);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void SurfDetect_atexit(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  SurfDetect_xil_terminate();
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void SurfDetect_initialize(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, 0);
  emlrtEnterRtStackR2012b(&st);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void SurfDetect_terminate(void)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/*
 * File trailer for _coder_SurfDetect_api.c
 *
 * [EOF]
 */
