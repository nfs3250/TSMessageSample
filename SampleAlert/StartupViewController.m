//
//  StartupViewController.m
//  SampleAlert
//
//  Created by Akshay on 9/26/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import "StartupViewController.h"
#import "HomeViewController.h"

@interface StartupViewController ()

@end

@implementation StartupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    BOOL isUserLoggedIn = YES;
    if (isUserLoggedIn) {
        [self showHomeViewController];
    }
    else {
        // Show Login view
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showHomeViewController
{
    HomeViewController *homeViewController = [[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:homeViewController];
    [self presentViewController:navController animated:YES completion:^{
        
    }];
}

@end
