//
//  SampleSingletonClass.h
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/30/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstViewController.h"

@interface SampleSingletonClass : NSObject
@property (nonatomic, strong) NSString *companyName;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *field;
@property (nonatomic, strong) NSString *year;
@property (nonatomic, strong) NSString *wallSelection;
@property (nonatomic, strong) NSString *windowQuantity;
@property (nonatomic, strong) NSString *windowType;
@property (nonatomic, strong) NSString *doorQuantity;
@property (nonatomic, strong) NSString *doorType;
@property (nonatomic, strong) NSString *lightingQuantity;
@property (nonatomic, strong) NSString *lightingType;
@property (nonatomic, strong) UIImage *notesImage;
@property (nonatomic, strong) NSString *notesComments;


+(SampleSingletonClass *)sharedInstance;
@end
