//
//  YearViewController.m
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/29/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import "YearViewController.h"
#import <UIKit/UIKit.h>
#import "SampleSingletonClass.h"

@interface YearViewController () <UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate>
@property (strong, nonatomic) NSArray *wallPickerData;

@end

@implementation YearViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //initialize data
    _wallPickerData = @[@"Кирпич", @"Панель", @"Бетон", @"Сендвич"];
    //Connect data
    self.wallPickerView.delegate = self;
    self.wallPickerView.dataSource = self;
    self.yearTextField.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - WallPickerView
// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)wallPickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)wallPickerView numberOfRowsInComponent:(NSInteger)component
{
    return _wallPickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)wallPickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _wallPickerData[row];
}


// Catpure the picker view selection
- (void)pickerView:(UIPickerView *)wallPickerView
      didSelectRow:(NSInteger)row {
    //response to pickerview
    row = [self.wallPickerView selectedRowInComponent:0];
    [SampleSingletonClass sharedInstance].wallSelection = [_wallPickerData objectAtIndex:row];
}

#pragma mark - YearTextField

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [SampleSingletonClass sharedInstance].year = self.yearTextField.text;
}

#pragma mark - NextButton

- (IBAction)nextButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"fromYearToWindowSegue" sender:nil];
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
