//
//  TabBarController.m
//  UITabBarControllerSXWT
//
//  Created by yang ming on 2016/12/4.
//  Copyright © 2016年 yang ming. All rights reserved.
//

#import "TabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface TabBarController ()<UITabBarControllerDelegate>

@end

@implementation TabBarController
- (id)init{
    if (self = [super init]) {
        FirstViewController *firstController = [[FirstViewController alloc] init];
        SecondViewController *secondController = [[SecondViewController alloc] init];
        ThirdViewController *thirdController = [[ThirdViewController alloc] init];
        ThirdViewController *forthController = [[ThirdViewController alloc] init];
        ThirdViewController *fifteenController = [[ThirdViewController alloc] init];
        ThirdViewController *sixteenController = [[ThirdViewController alloc] init];
        //设置UIViewController的viewController属性
        self.viewControllers = @[firstController,secondController,thirdController,forthController,fifteenController,sixteenController];//有几个添加几个
        self.selectedViewController = thirdController;//设置当前选中的controller
        self.selectedIndex = 1;//通过设置index来获取当前的controller
        self.customizableViewControllers = @[fifteenController,secondController];
        self.delegate = self;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

//是否允许切换
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    return YES;
}
//当选中某一个item时候调用
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"didSelect");
}
//当more中edit按钮点击时候调用
- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers {
    NSLog(@"willBeginCustomizing");
}
//当more中edit页面开始退出时调用
- (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
    NSLog(@"willEndCustomizing");
}
//当more中edit页面退出以后调用
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed{
    NSLog(@"didEndCustomizing");
}






@end
