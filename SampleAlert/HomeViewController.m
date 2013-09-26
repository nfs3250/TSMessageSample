//
//  HomeViewController.m
//  SampleAlert
//
//  Created by Akshay on 9/26/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import "HomeViewController.h"
#import "TSMessage.h"
#import "TSMessageView.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [TSMessage setDefaultViewController:self];
    [self showTopMessage];
    [self showBottomMessage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showTopMessage
{
    [TSMessage showNotificationInViewController:self title:@"Hi" subtitle:@"This is a top message" image:nil type:TSMessageNotificationTypeError duration:5 callback:nil buttonTitle:nil buttonCallback:nil atPosition:TSMessageNotificationPositionTop canBeDismisedByUser:YES];
}

-(void)showBottomMessage
{
    [TSMessage showNotificationInViewController:self title:@"Hi" subtitle:@"This is a bottom message" image:nil type:TSMessageNotificationTypeSuccess duration:5 callback:nil buttonTitle:nil buttonCallback:nil atPosition:TSMessageNotificationPositionBottom canBeDismisedByUser:YES];
}

@end
