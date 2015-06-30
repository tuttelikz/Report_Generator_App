//
//  LightingViewController.m
//  report_generator_app_1
//
//  Created by Sanzhar Askaruly on 6/29/15.
//  Copyright (c) 2015 Sanzhar Askaruly. All rights reserved.
//

#import "LightingViewController.h"
#import "SampleSingletonClass.h"

@interface LightingViewController () <UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) NSArray *lightingTypePickerData;
@end

@implementation LightingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _lightingTypePickerData = @[@"Накаливания", @"Энергосберегающие", @"Светодиодные"];
    self.lightingTypePickerView.delegate = self;  //delegation Window
    self.lightingTypePickerView.dataSource = self;
    self.lightingQuantityTextField.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - PickerView Singletone
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
        int row_lighting = [self.lightingTypePickerView selectedRowInComponent:0];
        [SampleSingletonClass sharedInstance].lightingType = [_lightingTypePickerData objectAtIndex:row_lighting];
    }

#pragma mark - PickerView Definitions
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
        return _lightingTypePickerData.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
        return _lightingTypePickerData[row];
}

#pragma mark - TextField Definitions
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [SampleSingletonClass sharedInstance].lightingQuantity = self.lightingQuantityTextField.text;
}

#pragma mark - NextButton

- (IBAction)nextButtonPressed:(UIButton *)sender {
    [self performSegueWithIdentifier:@"fromLightingToNotesSegue" sender:nil];
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
