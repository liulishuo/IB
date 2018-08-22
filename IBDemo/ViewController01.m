//
//  ViewController01.m
//  IBDemo
//
//  Created by liulishuo on 2018/8/8.
//  Copyright © 2018 liulishuo. All rights reserved.
//

#import "ViewController01.h"
#import "ColorPickerDataSource.h"

@interface ViewController01 ()<UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet ColorPickerDataSource *pickerDataSource;

@end

@implementation ViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _pickerDataSource.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self performSegueWithIdentifier:@"unwind" sender:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.view.backgroundColor = _pickerDataSource.dataArray[row];
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
