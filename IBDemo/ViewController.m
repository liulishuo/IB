//
//  ViewController.m
//  IBDemo
//
//  Created by liulishuo on 2018/8/8.
//  Copyright © 2018 liulishuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleUnwind:(UIStoryboardSegue *)sender {
    UIViewController *vc = sender.sourceViewController;
    self.view.backgroundColor = vc.view.backgroundColor;
}

@end
