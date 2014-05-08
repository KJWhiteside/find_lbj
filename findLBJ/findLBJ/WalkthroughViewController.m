//
//  WalkthroughViewController.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "WalkthroughViewController.h"

@interface WalkthroughViewController ()

@end

@implementation WalkthroughViewController

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

- (IBAction)exitWalkthrough:(id)sender
{
    [self.navigationController popViewControllerAnimated:TRUE];
}
@end
