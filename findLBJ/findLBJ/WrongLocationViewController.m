//
//  WrongLocationViewController.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "WrongLocationViewController.h"

@interface WrongLocationViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *starView;

@end

@implementation WrongLocationViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    float fade = 1.0 - ((self.closeness - 65) / 600);
    fade += 0.1;
    [self.starView setAlpha: fade];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneButtonDidPress:(id)sender
{
    [self.navigationController popViewControllerAnimated:TRUE];
}

- (IBAction)skipButtonDidPress:(id)sender
{
    [self.navigationController popViewControllerAnimated:TRUE];
    [self.delegate WrongLocationViewControllerDidSkip:self];
}
@end
