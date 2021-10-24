#pragma once

#ifdef WIN32
#define md5_EXPORT __declspec(dllexport)
#else
#define md5_EXPORT
#endif

md5_EXPORT void md5echo();
