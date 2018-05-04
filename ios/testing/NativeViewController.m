//
//  NativeViewController.m
//  testing
//
//  Created by Karan Thakkar on 04/05/2018.
//  Copyright © 2018 Karan Thakkar. All rights reserved.
//

#import "NativeViewController.h"
#import "ReactNativeViewController.h"

@interface NativeViewController ()

@end

@implementation NativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadView {
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 64, 200, 40)];
    label.text = @"Native Screen";
    [self.view addSubview:label];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 120, 200, 40)];
    [btn setTitle:@"Go to Native" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn addTarget:self action:@selector(navigateToNative:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btnRN = [[UIButton alloc] initWithFrame:CGRectMake(20, 180, 200, 40)];
    [btnRN setTitle:@"Go to React Native" forState:UIControlStateNormal];
    [btnRN setBackgroundColor:[UIColor blueColor]];
    [btnRN addTarget:self action:@selector(navigateToReactNative:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRN];
}

- (void)navigateToNative:(UIButton *)sender {
    NativeViewController *newVc = [NativeViewController new];
    [self showViewController:newVc sender:self];
}

- (void)navigateToReactNative:(UIButton *)sender {
    ReactNativeViewController *newVc = [[ReactNativeViewController alloc] initWithOpenedFrom:@"native"];
    [self showViewController:newVc sender:self];
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