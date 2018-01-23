/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_SurfDetect_api.h
 *
 * GPU Coder version                    : 1.0
 * CUDA/C/C++ source code generated on  : 23-Jan-2018 09:58:13
 */

#ifndef _CODER_SURFDETECT_API_H
#define _CODER_SURFDETECT_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_SurfDetect_api.h"

/* Type Definitions */
#ifndef typedef_struct0_T
#define typedef_struct0_T

typedef struct {
  real32_T x;
  real32_T y;
  real32_T scale;
  real32_T orientation;
  int32_T laplacian;
} struct0_T;

#endif                                 /*typedef_struct0_T*/

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void SurfDetect(uint8_T inputImage[589824], struct0_T intPoints_data[],
  int32_T intPoints_size[2]);
extern void SurfDetect_api(const mxArray * const prhs[1], const mxArray *plhs[1]);
extern void SurfDetect_atexit(void);
extern void SurfDetect_initialize(void);
extern void SurfDetect_terminate(void);
extern void SurfDetect_xil_terminate(void);

#endif

/*
 * File trailer for _coder_SurfDetect_api.h
 *
 * [EOF]
 */
