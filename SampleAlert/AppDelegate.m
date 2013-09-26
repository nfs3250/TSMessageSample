//
//  AppDelegate.m
//  SampleAlert
//
//  Created by Akshay on 9/26/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "StartupViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //self.homeViewController = [[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
    
    
    self.startUpViewController = [[StartupViewController alloc]initWithNibName:@"StartupViewController" bundle:nil];
    //self.navigationController = [[UINavigationController alloc]initWithRootViewController:self.startUpViewController];
    self.window.rootViewController = self.startUpViewController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - UI Customization

-(void)customizeUIControlsAppearance
{
    UIImage *backgroundImage = nil;
    if (IOS_VERSION_GREATER_THAN_OR_EQUAL_TO(IOS_7))
    {
        self.window.tintColor = RGBA(102, 102, 153, 1);
        backgroundImage = [[UIImage imageNamed:NAVIGATION_BAR_WHITE_BKGD_IMAGE]
                           resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
    else
    {
        backgroundImage = [[UIImage imageNamed:NAVIGATION_BAR_WHITE_BKGD_IMAGE_44] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    }
    
    // Set the background image for *all* UINavigationBars
    [[UINavigationBar appearance] setBackgroundImage:backgroundImage
                                       forBarMetrics:UIBarMetricsDefault];
    
    //drop shadow angle -90, distance 1, color black, font AXURE_HANDWRITING
    // Customize the title text for *all* UINavigationBars
    [[UINavigationBar appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor blackColor],
      UITextAttributeTextColor,
      [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8],
      UITextAttributeTextShadowColor,
      [NSValue valueWithUIOffset:UIOffsetMake(0, -1)],
      UITextAttributeTextShadowOffset,
      [UIFont fontWithName:@"HelveticaNeue-Medium" size:17.0],UITextAttributeFont,
      nil]];
    [[UIToolbar appearance]setBackgroundImage:[UIImage imageNamed:NAVIGATION_BAR_WHITE_BKGD_IMAGE_44]
                           forToolbarPosition:UIToolbarPositionAny
                                   barMetrics:UIBarMetricsDefault];
}


@end
