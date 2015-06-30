//
//  WindowsViewController.h
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/29/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WindowsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *windowQuantityTextField;
@property (strong, nonatomic) IBOutlet UIPickerView *windowTypePickerView;
@property (strong, nonatomic) IBOutlet UITextField *doorQuantityTextField;
@property (strong, nonatomic) IBOutlet UIPickerView *doorTypePickerView;

@end
