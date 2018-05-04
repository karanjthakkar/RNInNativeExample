//
//  ReactNativeHelper.m
//  testing
//
//  Created by Karan Thakkar on 04/05/2018.
//  Copyright © 2018 Karan Thakkar. All rights reserved.
//

#import "ReactNativeHelper.h"

@implementation ReactNativeHelper

+ (UINavigationController *)navigationController {
    return (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
}

@end
