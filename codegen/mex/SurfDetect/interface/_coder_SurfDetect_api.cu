/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_SurfDetect_api.cu
 *
 * Code generation for function '_coder_SurfDetect_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "SurfDetect.h"
#include "_coder_SurfDetect_api.h"
#include "SurfDetect_data.h"

/* Function Declarations */
static uint8_T (*b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[589824];
static uint8_T (*c_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId))[589824];
static uint8_T (*emlrt_marshallIn(const mxArray *inputImage, const char_T
  *identifier))[589824];
static const mxArray *emlrt_marshallOut(const struct0_T u_data[], const int32_T
  u_size[2]);

/* Function Definitions */
static uint8_T (*b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId))[589824]
{
  uint8_T (*y)[589824];
  y = c_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}
  static uint8_T (*c_emlrt_marshallIn(const mxArray *src, const
  emlrtMsgIdentifier *msgId))[589824]
{
  uint8_T (*ret)[589824];
  static const int32_T dims[3] = { 384, 512, 3 };

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "uint8", false, 3U,
    dims);
  ret = (uint8_T (*)[589824])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static uint8_T (*emlrt_marshallIn(const mxArray *inputImage, const char_T
  *identifier))[589824]
{
  uint8_T (*y)[589824];
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(emlrtAlias(inputImage), &thisId);
  emlrtDestroyArray(&inputImage);
  return y;
}
  static const mxArray *emlrt_marshallOut(const struct0_T u_data[], const
  int32_T u_size[2])
{
  const mxArray *y;
  int32_T iv1[2];
  int32_T i;
  static const char * sv0[5] = { "x", "y", "scale", "orientation", "laplacian" };

  int32_T b_j1;
  const mxArray *b_y;
  const mxArray *m0;
  y = NULL;
  for (i = 0; i < 2; i++) {
    iv1[i] = u_size[i];
  }

  emlrtAssign(&y, emlrtCreateStructArray(2, iv1, 5, sv0));
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

void SurfDetect_api(SurfDetectStackData *SD, const mxArray * const prhs[1],
                    const mxArray *plhs[1])
{
  uint8_T (*inputImage)[589824];
  struct0_T intPoints_data[2000];
  int32_T intPoints_size[2];

  /* Marshall function inputs */
  inputImage = emlrt_marshallIn(emlrtAlias(prhs[0]), "inputImage");

  /* Invoke the target function */
  SurfDetect(SD, *inputImage, intPoints_data, intPoints_size);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(intPoints_data, intPoints_size);
}

/* End of code generation (_coder_SurfDetect_api.cu) */
