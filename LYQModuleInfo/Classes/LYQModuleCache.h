//  
//  LYQModuleCache.h
//  LYQModuleInfo
//   
//  Created by LYQ on 2020/9/30
//  Copyright © 2020 LYQ. All rights reserved.
//   

#import <Foundation/Foundation.h>


@protocol LYQModuleDelegate <NSObject>
/// return title detail class
- (NSDictionary *)moduleInfo;

@end


@interface LYQModuleCache : NSObject

+ (instancetype)shareInstance;

- (void)registerDemoModule:(Class)clazz;

- (NSArray *)moduleInfoArray;

@end
