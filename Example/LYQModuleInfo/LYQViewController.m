//
//  LYQViewController.m
//  LYQModuleInfo
//
//  Created by LYQ on 09/30/2020.
//  Copyright (c) 2020 LYQ. All rights reserved.
//

#import "LYQViewController.h"
#import "LYQModuleInfo.h"


@LYQMod(LYQViewController)
@interface LYQViewController ()<LYQModuleDelegate>

@end

@implementation LYQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@", [[LYQModuleCache shareInstance] moduleInfoArray]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSDictionary *)moduleInfo {
    return @{
        @"title": @"title",
        @"detail": @"detail",
        @"class": @"YLViewController",
    };
}

@end
