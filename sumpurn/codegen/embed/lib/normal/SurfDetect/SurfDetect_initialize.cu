//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
// File: SurfDetect_initialize.cu
//
// GPU Coder version                    : 1.0
// CUDA/C/C++ source code generated on  : 23-Jan-2018 09:58:13
//

// Include Files
#include "rt_nonfinite.h"
#include "SurfDetect.h"
#include "SurfDetect_initialize.h"

// Function Definitions

//
// Arguments    : void
// Return Type  : void
//
void SurfDetect_initialize()
{
  rt_InitInfAndNaN(8U);
}

//
// File trailer for SurfDetect_initialize.cu
//
// [EOF]
//
