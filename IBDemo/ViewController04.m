//
//  ViewController04.m
//  IBDemo
//
//  Created by sure on 2018/8/13.
//  Copyright © 2018年 liulishuo. All rights reserved.
//

#import "ViewController04.h"

@interface ViewController04 ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *height;

@end

@implementation ViewController04

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    _height.constant = self.view.frame.size.height * 2;
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
