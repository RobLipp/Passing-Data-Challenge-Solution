//
//  CCViewController.m
//  Passing Data Challenge Solution
//
//  Created by Rob Lipp on 2015-09-18.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import "CCViewController.h"
#import "CCDetailViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //Introspection here
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[CCDetailViewController class]]) {
            CCDetailViewController *detailVC = segue.destinationViewController;
            detailVC.informationFromTextField = self.textField.text;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
