#pragma once

#include <limits.h>

typedef signed __int8       zip_int8_t;
typedef signed __int16      zip_int16_t;
typedef signed __int32      zip_int32_t;
typedef signed __int64      zip_int64_t;
typedef unsigned __int8     zip_uint8_t;
typedef unsigned __int16    zip_uint16_t;
typedef unsigned __int32    zip_uint32_t;
typedef unsigned __int64    zip_uint64_t;

#define ZIP_INT8_MAX    CHAR_MAX
#define ZIP_INT16_MAX   SHRT_MAX
#define ZIP_INT32_MAX   INT_MAX
#define ZIP_INT64_MAX   LLONG_MAX
#define ZIP_UINT8_MAX   UCHAR_MAX
#define ZIP_UINT16_MAX  USHRT_MAX
#define ZIP_UINT32_MAX  UINT_MAX
#define ZIP_UINT64_MAX  ULLONG_MAX

#define strcasecmp strcmpi
