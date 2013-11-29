//
//  MultiScreenViewController.m
//  MultiScreen
//
//  Created by shin0128 on 13/10/20.
//  Copyright (c) 2013年 shin0128. All rights reserved.
//

#import "MultiScreenViewController.h"
#import "SecondViewController.h"

@interface MultiScreenViewController ()

@end

@implementation MultiScreenViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    SecondViewController *secondView
    = (SecondViewController *)segue.destinationViewController;
    secondView.paramIn = @"GitHubテスト";
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if ([self.presentedViewController isKindOfClass:[SecondViewController class]])
    {
        SecondViewController *secondView
        = (SecondViewController *)self.presentedViewController;
        NSLog(@"FirstView:%@",secondView.paramOut);
    }
}

@end
