//
//  ColorPickerDataSource.m
//  IBDemo
//
//  Created by liulishuo on 2018/8/8.
//  Copyright © 2018 liulishuo. All rights reserved.
//

#import "ColorPickerDataSource.h"

@implementation ColorPickerDataSource

- (void)awakeFromNib {
    [super awakeFromNib];
    _dataArray = @[
                   [UIColor redColor],
                   [UIColor blueColor],
                   [UIColor orangeColor],
                   [UIColor blackColor],
                   [UIColor purpleColor]
                   ];
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _dataArray.count;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 60;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    UIView *customView = [UIView new];
    customView.backgroundColor = _dataArray[row];
    return customView;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if ([_delegate respondsToSelector:@selector(pickerView:didSelectRow:inComponent:)]) {
        [_delegate pickerView:pickerView didSelectRow:row inComponent:component];
    }
}

@end
