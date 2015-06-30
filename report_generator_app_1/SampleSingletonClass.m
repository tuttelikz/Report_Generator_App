//
//  SampleSingletonClass.m
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/30/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import "SampleSingletonClass.h"

@implementation SampleSingletonClass

+ (instancetype)sharedInstance
{
    static SampleSingletonClass *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[SampleSingletonClass alloc] init];
        // Do any other initialisation stuff here
    });
    
    return sharedInstance;
}

@end
