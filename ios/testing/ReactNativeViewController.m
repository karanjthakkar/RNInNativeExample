//
//  ReactNativeViewController.m
//  testing
//
//  Created by Karan Thakkar on 04/05/2018.
//  Copyright © 2018 Karan Thakkar. All rights reserved.
//

#import "ReactNativeViewController.h"

#import <React/RCTRootView.h>
#import "ReactNativeHelper.h";

@interface ReactNativeViewController ()

@property NSDictionary *initialProps;

@end

@implementation ReactNativeViewController

- (instancetype)initWithProps:(NSDictionary *)initialProps {
    self = [super init];
    if (self)
    {
        _initialProps = initialProps;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadView {
    RCTRootView *rootView = [ReactNativeHelper getRootViewWithModuleName: @"testing"
                                                       initialProperties: self.initialProps];
    self.view = rootView;
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
