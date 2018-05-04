//
//  NavigationBridge.m
//  testing
//
//  Created by Karan Thakkar on 04/05/2018.
//  Copyright © 2018 Karan Thakkar. All rights reserved.
//

#import "NavigationBridge.h"
#import "ReactNativeHelper.h"
#import <UIKit/UIKit.h>

@implementation NavigationBridge

RCT_EXPORT_MODULE(NavigationBridge);

// We are doing navigation operations, so make sure they are all on the UI Thread.
- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(pop) {
    [[ReactNativeHelper navigationController] popViewControllerAnimated:YES];
}

@end
