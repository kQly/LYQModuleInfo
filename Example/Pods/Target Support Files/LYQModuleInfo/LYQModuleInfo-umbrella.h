#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "LYQAnnotation.h"
#import "LYQModuleCache.h"
#import "LYQModuleInfo.h"

FOUNDATION_EXPORT double LYQModuleInfoVersionNumber;
FOUNDATION_EXPORT const unsigned char LYQModuleInfoVersionString[];

