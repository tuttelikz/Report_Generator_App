//
//  FirstViewController.m
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/29/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import "FirstViewController.h"
#import "SampleSingletonClass.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [SampleSingletonClass sharedInstance].companyName = self.companyNameTextField.text;
    [SampleSingletonClass sharedInstance].address = self.addressTextField.text;
    [SampleSingletonClass sharedInstance].field = self.fieldTextField.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)nextButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"fromGenToYearSegue" sender:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
