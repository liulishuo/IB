//
//  CustomSegue.m
//  IBDemo
//
//  Created by sure on 2018/8/13.
//  Copyright © 2018年 liulishuo. All rights reserved.
//

#import "CustomSegue.h"

@implementation CustomSegue

- (void)perform {
    UIViewController *svc = self.sourceViewController;
    UIViewController *dvc = self.destinationViewController;
    
    dvc.view.frame = CGRectMake(0, svc.view.frame.size.height + svc.view.frame.origin.y, svc.view.frame.size.width, svc.view.frame.size.height);
    dvc.view.alpha = 0;
    [svc.view addSubview:dvc.view];
    
    [UIView animateWithDuration:0.5 animations:^{
        dvc.view.alpha = 1;
        dvc.view.frame = svc.view.frame;
    } completion:^(BOOL finished) {
//        [svc presentViewController:dvc animated:NO completion:^{
//
//        }];
        [svc.navigationController pushViewController:dvc animated:NO];
    }];
}

@end
