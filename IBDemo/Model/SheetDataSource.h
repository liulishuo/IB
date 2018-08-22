//
//  SheetData.h
//  IBDemo
//
//  Created by liulishuo on 2018/8/9.
//  Copyright © 2018 liulishuo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SheetDataSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataArray;

@end
