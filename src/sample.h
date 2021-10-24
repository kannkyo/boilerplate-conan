#pragma once

#ifdef WIN32
  #define sample_EXPORT __declspec(dllexport)
#else
  #define sample_EXPORT
#endif

sample_EXPORT void sample();
