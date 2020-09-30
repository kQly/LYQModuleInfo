//  
//  LYQAnnotation.h
//  LYQModuleInfo
//   
//  Created by LYQ on 2020/9/30
//  Copyright © 2020 LYQ. All rights reserved.
//   

#import <Foundation/Foundation.h>

#ifndef LYQModSectName

#define LYQModSectName "LYQModuleSect"

#endif


#define LYQDATA(sectname) __attribute((used, section("__DATA,"#sectname" ")))



#define LYQMod(name) \
class NSObject; char * k##name##_mod LYQDATA(LYQModuleSect) = ""#name"";

@interface LYQAnnotation : NSObject

@end
