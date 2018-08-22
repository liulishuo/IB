//
//  ViewController03.m
//  IBDemo
//
//  Created by liulishuo on 2018/8/9.
//  Copyright © 2018 liulishuo. All rights reserved.
//

#import "ViewController03.h"

@interface ViewController03 () <UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (nonatomic, strong) NSArray<UIViewController *> *dataArray;
@property (nonatomic, assign) NSUInteger currentIndex;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sc;

@end

@implementation ViewController03

- (void)viewDidLoad {
    [super viewDidLoad];
    _currentIndex = 0;
    // Do any additional setup after loading the view.
    NSArray *array = self.childViewControllers;
    UIPageViewController *pvc = array.lastObject;
    UIViewController *vc1 = [UIViewController new];
    vc1.view.backgroundColor = [UIColor redColor];
    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor blueColor];
    UIViewController *vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor greenColor];
    _dataArray = @[vc1,vc2,vc3];
    pvc.dataSource = self;
    pvc.delegate = self;
    [pvc setViewControllers:[_dataArray subarrayWithRange:NSMakeRange(_currentIndex, 1)] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:^(BOOL finished) {

    }];
}

- (IBAction)change:(id)sender {
    UISegmentedControl *sc = (UISegmentedControl *)sender;
    UIPageViewControllerNavigationDirection d = UIPageViewControllerNavigationDirectionForward;
    if (_currentIndex > sc.selectedSegmentIndex) {
        d = UIPageViewControllerNavigationDirectionReverse;
    }
    _currentIndex = sc.selectedSegmentIndex;

    NSArray *array = self.childViewControllers;
    UIPageViewController *pvc = array.lastObject;
    [pvc setViewControllers:[_dataArray subarrayWithRange:NSMakeRange(_currentIndex, 1)] direction:d animated:YES completion:^(BOOL finished) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger index = [_dataArray indexOfObject:viewController];
    if (index == 0) {
        index = _dataArray.count - 1;
    } else {
        index --;
    }
    return _dataArray[index];
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger index = [_dataArray indexOfObject:viewController];
    if (index == _dataArray.count - 1) {
        index = 0;
    } else {
        index ++;
    }
    return _dataArray[index];
}

- (void)pageViewController:(UIPageViewController *)pageViewController willTransitionToViewControllers:(NSArray<UIViewController *> *)pendingViewControllers {
    UIViewController *vc = pendingViewControllers.lastObject;
    _currentIndex = [_dataArray indexOfObject:vc];
    NSLog(@"%ld",_currentIndex);
    [_sc setSelectedSegmentIndex:_currentIndex];
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
