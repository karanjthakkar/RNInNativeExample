//
//  ReactNativeHelper.h
//  testing
//
//  Created by Karan Thakkar on 04/05/2018.
//  Copyright © 2018 Karan Thakkar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTBridge.h>
#import <React/RCTRootView.h>

@interface ReactNativeHelper : NSObject

+ (UINavigationController *)navigationController;
+ (void)createBridge;
+ (RCTRootView *)getRootViewWithModuleName:(NSString *)moduleName initialProperties:(NSDictionary *)initialProperties;

@end
