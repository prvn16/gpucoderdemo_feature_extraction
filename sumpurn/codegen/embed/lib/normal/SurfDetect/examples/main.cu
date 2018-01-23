//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
// File: main.cu
//
// GPU Coder version                    : 1.0
// CUDA/C/C++ source code generated on  : 23-Jan-2018 09:58:13
//

//***********************************************************************
// This automatically generated example C main file shows how to call
// entry-point functions that MATLAB Coder generated. You must customize
// this file for your application. Do not modify this file directly.
// Instead, make a copy of this file, modify it, and integrate it into
// your development environment.
//
// This file initializes entry-point function arguments to a default
// size and value before calling the entry-point functions. It does
// not store or use any values returned from the entry-point functions.
// If necessary, it does pre-allocate memory for returned values.
// You can use this file as a starting point for a main function that
// you can deploy in your application.
//
// After you copy the file, and before you deploy it, you must make the
// following changes:
// * For variable-size function arguments, change the example sizes to
// the sizes that your application requires.
// * Change the example values of function arguments to the values that
// your application requires.
// * If the entry-point functions return values, store these values or
// otherwise use them as required by your application.
//
//***********************************************************************
// Include Files
#include "rt_nonfinite.h"
#include "SurfDetect.h"
#include "main.h"
#include "SurfDetect_terminate.h"
#include "SurfDetect_initialize.h"

// Function Declarations
static void argInit_384x512x3_uint8_T(uint8_T result[589824]);
static uint8_T argInit_uint8_T();
static void main_SurfDetect();

// Function Definitions

//
// Arguments    : uint8_T result[589824]
// Return Type  : void
//
static void argInit_384x512x3_uint8_T(uint8_T result[589824])
{
  int32_T idx0;
  int32_T idx1;
  int32_T idx2;

  // Loop over the array to initialize each element.
  for (idx0 = 0; idx0 < 384; idx0++) {
    for (idx1 = 0; idx1 < 512; idx1++) {
      for (idx2 = 0; idx2 < 3; idx2++) {
        // Set the value of the array element.
        // Change this value to the value that the application requires.
        result[(idx0 + 384 * idx1) + 196608 * idx2] = argInit_uint8_T();
      }
    }
  }
}

//
// Arguments    : void
// Return Type  : uint8_T
//
static uint8_T argInit_uint8_T()
{
  return 0;
}

//
// Arguments    : void
// Return Type  : void
//
static void main_SurfDetect()
{
  struct0_T intPoints_data[2000];
  int32_T intPoints_size[2];
  static uint8_T b[589824];

  // Initialize function 'SurfDetect' input arguments.
  // Initialize function input argument 'inputImage'.
  // Call the entry-point 'SurfDetect'.
  argInit_384x512x3_uint8_T(b);
  SurfDetect(b, intPoints_data, intPoints_size);
}

//
// Arguments    : int32_T argc
//                const char * const argv[]
// Return Type  : int32_T
//
int32_T main(int32_T, const char * const [])
{
  // Initialize the application.
  // You do not need to do this more than one time.
  SurfDetect_initialize();

  // Invoke the entry-point functions.
  // You can call entry-point functions multiple times.
  main_SurfDetect();

  // Terminate the application.
  // You do not need to do this more than one time.
  SurfDetect_terminate();
  return 0;
}

//
// File trailer for main.cu
//
// [EOF]
//
