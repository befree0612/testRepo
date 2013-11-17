//
//  SecondViewController.m
//  MultiScreen
//
//  Created by shin0128 on 13/10/20.
//  Copyright (c) 2013年 shin0128. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toFirst:(id)sender {
    
    NSLog(@"SecondView:%@",self.paramIn);
    self.paramOut = @"XYZ";
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
