/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * SurfDetect_types.h
 *
 * Code generation for function 'SurfDetect'
 *
 */

#ifndef SURFDETECT_TYPES_H
#define SURFDETECT_TYPES_H

/* Include files */
#include "rtwtypes.h"

/* Type Definitions */
#ifndef struct_emxArray_real32_T_192x256
#define struct_emxArray_real32_T_192x256

struct emxArray_real32_T_192x256
{
  real32_T data[49152];
  int32_T size[2];
};

#endif                                 /*struct_emxArray_real32_T_192x256*/

#ifndef typedef_emxArray_real32_T_192x256
#define typedef_emxArray_real32_T_192x256

typedef struct emxArray_real32_T_192x256 emxArray_real32_T_192x256;

#endif                                 /*typedef_emxArray_real32_T_192x256*/

#ifndef struct_emxArray_uint8_T_192x256
#define struct_emxArray_uint8_T_192x256

struct emxArray_uint8_T_192x256
{
  uint8_T data[49152];
  int32_T size[2];
};

#endif                                 /*struct_emxArray_uint8_T_192x256*/

#ifndef typedef_emxArray_uint8_T_192x256
#define typedef_emxArray_uint8_T_192x256

typedef struct emxArray_uint8_T_192x256 emxArray_uint8_T_192x256;

#endif                                 /*typedef_emxArray_uint8_T_192x256*/

#ifndef struct_sq5NMr6aZH4mPZy4ofj3D5G
#define struct_sq5NMr6aZH4mPZy4ofj3D5G

struct sq5NMr6aZH4mPZy4ofj3D5G
{
  real_T width;
  real_T height;
  real_T step;
  real_T filter;
  emxArray_real32_T_192x256 responses;
  emxArray_uint8_T_192x256 laplacian;
};

#endif                                 /*struct_sq5NMr6aZH4mPZy4ofj3D5G*/

#ifndef typedef_struct_T
#define typedef_struct_T

typedef struct sq5NMr6aZH4mPZy4ofj3D5G struct_T;

#endif                                 /*typedef_struct_T*/

#ifndef typedef_SurfDetectStackData
#define typedef_SurfDetectStackData

typedef struct {
  struct {
    struct_T responseMap[12];
  } f0;
} SurfDetectStackData;

#endif                                 /*typedef_SurfDetectStackData*/

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
#endif

/* End of code generation (SurfDetect_types.h) */
