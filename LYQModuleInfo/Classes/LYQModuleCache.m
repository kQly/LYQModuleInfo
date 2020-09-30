//  
//  LYQModuleCache.m
//  LYQModuleInfo
//   
//  Created by LYQ on 2020/9/30
//  Copyright © 2020 LYQ. All rights reserved.
//   

#import "LYQModuleCache.h"

@interface LYQModuleCache ()

@property (nonatomic, strong) NSMutableArray *moduleArray;

@end

@implementation LYQModuleCache


+ (instancetype)shareInstance {
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}


- (void)registerDemoModule:(Class)clazz {
    
    if ([clazz conformsToProtocol:@protocol(LYQModuleDelegate)]) {
        if ([clazz instancesRespondToSelector:@selector(moduleInfo)]) {
            id <LYQModuleDelegate>module = [[clazz alloc] init];
            NSDictionary *info = [module moduleInfo];
            [self.moduleArray addObject:info];
        }
    }
}


- (NSArray *)moduleInfoArray {
    NSSortDescriptor *indexSD = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:NO];
    [self.moduleArray sortUsingDescriptors:@[indexSD]];
    return  [self.moduleArray copy];
}


#pragma mark - 懒加载

- (NSMutableArray *)moduleArray {
    if (!_moduleArray) {
        _moduleArray = [NSMutableArray array];
    }
    return _moduleArray;
}


@end
