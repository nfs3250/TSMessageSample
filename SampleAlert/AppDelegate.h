//
//  AppDelegate.h
//  SampleAlert
//
//  Created by Akshay on 9/26/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HomeViewController;
@class StartupViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,strong) HomeViewController *homeViewController;
@property (nonatomic,strong) StartupViewController *startUpViewController;
@property (nonatomic,strong) UINavigationController *navigationController;

@end
