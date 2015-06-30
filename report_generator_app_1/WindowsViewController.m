//
//  WindowsViewController.m
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/29/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import "WindowsViewController.h"
#import "SampleSingletonClass.h"

@interface WindowsViewController () <UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate>
@property (strong, nonatomic) NSArray *windowTypePickerData;
@property (strong, nonatomic) NSArray *doorTypePickerData;

@end

@implementation WindowsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _windowTypePickerData = @[@"Пластик", @"Металлопластик", @"Дерево", ];
    _doorTypePickerData = @[@"Дерево", @"Пластик", @"Металлопластик", @"Железо"];
    self.windowTypePickerView.delegate = self;  //delegation Window
    self.windowTypePickerView.dataSource = self;
    self.windowQuantityTextField.delegate = self;
    self.doorTypePickerView.delegate = self; //delegation Door
    self.doorTypePickerView.dataSource = self;
    self.doorQuantityTextField.delegate = self;
    self.windowTypePickerView.tag = 1;
    self.doorTypePickerView.tag = 2;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - PickerView Singletone
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)row {
    if ([pickerView isEqual:self.windowTypePickerView]) {
        row = [self.windowTypePickerView selectedRowInComponent:0];
        [SampleSingletonClass sharedInstance].windowType = [_windowTypePickerData objectAtIndex:row];
    }
    else if ([pickerView isEqual:self.doorTypePickerView]) {
        row = [self.doorTypePickerView selectedRowInComponent:0];
        [SampleSingletonClass sharedInstance].doorType = [_doorTypePickerData objectAtIndex:row];
    }
}

#pragma mark - PickerView Definitions
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if ([pickerView isEqual:self.windowTypePickerView]) {
        return _windowTypePickerData.count;
    }
    else if ([pickerView isEqual:self.doorTypePickerView]) {
        return _doorTypePickerData.count;
    }
    else
        return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    if (pickerView.tag == 1){
        return _windowTypePickerData[row];
    }
    
    else if(pickerView.tag == 2) {
        return _doorTypePickerData[row];
    }
    else
        return @"hiii";
}

#pragma mark - TextField Definitions
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [SampleSingletonClass sharedInstance].windowQuantity = self.windowQuantityTextField.text;
    [SampleSingletonClass sharedInstance].doorQuantity = self.doorQuantityTextField.text;
}


#pragma mark - NextButton
- (IBAction)nextButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"fromWindowToLightingSegue" sender:nil];
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
