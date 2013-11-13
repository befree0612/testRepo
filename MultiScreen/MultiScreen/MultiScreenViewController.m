//
//  MultiScreenViewController.m
//  MultiScreen
//
//  Created by 津崎 真一 on 13/10/20.
//  Copyright (c) 2013年 津崎 真一. All rights reserved.
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
    secondView.paramIn = @"ABC";
    
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
