//
//  NavigationBridge.m
//  testing
//
//  Created by Karan Thakkar on 04/05/2018.
//  Copyright © 2018 Karan Thakkar. All rights reserved.
//

#import "NavigationBridge.h"
#import "ReactNativeHelper.h"
#import "NativeViewController.h"
#import "ReactNativeViewController.h"
#import <UIKit/UIKit.h>

@implementation NavigationBridge

RCT_EXPORT_MODULE(NavigationBridge);

/**
 * We are doing navigation operations, so make sure they are all on the UI Thread.
 * Or you can wrap specific methods that require the main queue like this:
 *
 * dispatch_async(dispatch_get_main_queue(), ^{
 *   // method implementation
 * });
 */
- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(push:(NSDictionary *)params) {
    NSString *type = [params valueForKey:@"type"];
    if ([type isEqualToString:@"REACT_NATIVE"]) {
        ReactNativeViewController *newVc = [[ReactNativeViewController alloc] initWithOpenedFrom:@"react native"];
        [[ReactNativeHelper navigationController] showViewController:newVc sender:self];
    } else if ([type isEqualToString:@"NATIVE"]) {
        NativeViewController *newVc = [NativeViewController new];
        [[ReactNativeHelper navigationController] showViewController:newVc sender:self];
    }
}

RCT_EXPORT_METHOD(pop) {
    [[ReactNativeHelper navigationController] popViewControllerAnimated:YES];
}

@end
