//
//  ViewController02.m
//  IBDemo
//
//  Created by liulishuo on 2018/8/9.
//  Copyright © 2018 liulishuo. All rights reserved.
//

#import "ViewController02.h"
#import "SheetView.h"

@interface ViewController02 ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
//    UINib *nib = [UINib nibWithNibName:@"SheetView" bundle:nil];
//    SheetView *v = [nib instantiateWithOwner:nib options:nil].firstObject;
    // Do any additional setup after loading the view.
    SheetView *sv = (SheetView *)(_tableView.tableHeaderView);
    sv.label1.text = @"tableHeaderView";
    sv.label2.text = @"tableHeaderView";
    
    SheetView *sv1 = (SheetView *)(_tableView.tableFooterView);
    sv1.label1.text = @"tableFooterView";
    sv1.label2.text = @"tableFooterView";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
