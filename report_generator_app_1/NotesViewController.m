//
//  NotesViewController.m
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/29/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import "NotesViewController.h"
#import "SampleSingletonClass.h"
#import <UIKit/UIKit.h>

@interface NotesViewController () <UITextFieldDelegate, UIImagePickerControllerDelegate>

@end

@implementation NotesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.notesTextField.delegate = self;   //should also do smth with imageView
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TextField Definitions
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [SampleSingletonClass sharedInstance].notesComments = self.notesTextField.text;
    [SampleSingletonClass sharedInstance].notesImage = self.notesImageView.image;
}

#pragma mark - FinishButton
- (IBAction)finishButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"fromNotesToFinalSegue" sender:nil];
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
