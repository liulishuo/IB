//
//  SheetData.m
//  IBDemo
//
//  Created by liulishuo on 2018/8/9.
//  Copyright © 2018 liulishuo. All rights reserved.
//

#import "SheetDataSource.h"
#import "SheetCell.h"

@implementation SheetDataSource

- (void)awakeFromNib {
    [super awakeFromNib];
    _dataArray = @[
                   @[@"1",@"1"],
                   @[@"1111111",@"1111111"],
                   @[@"11111111111111",@"11111111111111"],
                   @[@"11111111111111",@"1"],
                   @[@"1",@"11111111111111"],
                   @[@"111111111111111111111111111111111111111111",@"111111111111111111111111111111111111111111"],
                   @[@"111111111111111111111111111111111111111111",@"1"],
                   ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SheetCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SheetCell"];
    NSArray *subArray = _dataArray[indexPath.row];
    cell.mainView.label1.text = subArray[0];
    cell.mainView.label2.text = subArray[1];
    return cell;
}

@end
