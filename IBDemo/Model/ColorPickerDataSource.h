//
//  ColorPickerDataSource.h
//  IBDemo
//
//  Created by liulishuo on 2018/8/8.
//  Copyright © 2018 liulishuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ColorPickerDataSource : NSObject<UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, weak) id<UIPickerViewDelegate>delegate;

@end
