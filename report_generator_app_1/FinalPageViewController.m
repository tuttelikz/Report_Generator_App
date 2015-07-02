//
//  FinalPageViewController.m
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/29/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import "FinalPageViewController.h"
#import "ViewController.h"
#import <Parse/Parse.h>

@interface FinalPageViewController ()

@end

@implementation FinalPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.destinationMailLabel.text = [PFUser currentUser].email;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginNewButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"fromFinalToFirstSegue" sender:nil];
    
}

- (IBAction)pdfButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"fromFinalToPdf" sender:nil];
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
