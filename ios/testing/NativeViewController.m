//
//  NativeViewController.m
//  testing
//
//  Created by Karan Thakkar on 04/05/2018.
//  Copyright © 2018 Karan Thakkar. All rights reserved.
//

#import "NativeViewController.h"
#import "ReactNativeViewController.h"
#import "ReactNativeHelper.h"

@interface NativeViewController ()

@end

@implementation NativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadView {
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view.backgroundColor = [UIColor colorWithRed:0 green:255 blue:255 alpha:1];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 84, 240, 40)];
    label.text = @"Native Screen";
    [self.view addSubview:label];
    
    RCTRootView *backRN = [ReactNativeHelper getRootViewWithModuleName:@"Widget" initialProperties:nil];
    [backRN setFrame:CGRectMake(20, 120, 240, 40)];
    [self.view addSubview:backRN];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 180, 240, 40)];
    [btn setTitle:@"Go to Native" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn addTarget:self action:@selector(navigateToNative:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btnRN = [[UIButton alloc] initWithFrame:CGRectMake(20, 240, 240, 40)];
    [btnRN setTitle:@"Go to React Native" forState:UIControlStateNormal];
    [btnRN setBackgroundColor:[UIColor blueColor]];
    [btnRN addTarget:self action:@selector(navigateToReactNative:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRN];
    
    int stackLength = [[ReactNativeHelper navigationController] viewControllers].count;
    if (stackLength > 1) {
        UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(20, 300, 240, 40)];
        [back setTitle:@"Go back" forState:UIControlStateNormal];
        [back setBackgroundColor:[UIColor blueColor]];
        [back addTarget:self action:@selector(goBack:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:back];
    }
}

- (void)navigateToNative:(UIButton *)sender {
    NativeViewController *newVc = [NativeViewController new];
    [self showViewController:newVc sender:self];
}

- (void)navigateToReactNative:(UIButton *)sender {
    ReactNativeViewController *newVc = [[ReactNativeViewController alloc] initWithProps:@{
                                                                                               @"opened_from": @"native"
                                                                                               }];
    [self showViewController:newVc sender:self];
}

- (void)goBack:(UIButton *)sender {
    [[ReactNativeHelper navigationController] popViewControllerAnimated:YES];
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
