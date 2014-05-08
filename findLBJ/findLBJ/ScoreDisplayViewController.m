//
//  ScoreDisplayViewController.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "ScoreDisplayViewController.h"

@interface ScoreDisplayViewController ()

@end

@implementation ScoreDisplayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSTimeInterval secondsBetween =
    [[NSDate date] timeIntervalSinceDate:self.startTime];
    
    NSInteger hours = secondsBetween / 3600;
    NSString* hourString;
    if (hours == 1)
        hourString = @"Hour";
    else
        hourString = @"Hours";
    

    secondsBetween -= (hours * 3600);
    NSInteger minutes = secondsBetween / 60;
    NSString* minuteString;
    if (minutes == 1)
        minuteString = @"Minute";
    else
        minuteString = @"Minutes";

    
    NSInteger seconds = secondsBetween - (minutes * 60);
    NSString* secondString;
    if (seconds == 1)
        secondString = @"Second";
    else
        secondString = @"Seconds";
    
    [self.timeLabel setText:
     [NSString stringWithFormat:@"Congratulations! Your time: %li %@, %li %@, %li %@", (long)hours, hourString, (long)minutes, minuteString, (long)seconds, secondString]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneClicker:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:TRUE];
}

- (IBAction)socialMediaBtn:(id)sender
{
    UIAlertView *errorAlert =
    [[UIAlertView alloc] initWithTitle:@"Coming Soon!"
                               message:@"This feature isn't yet implemented."
                              delegate:self
                     cancelButtonTitle:@"OK"
                     otherButtonTitles:nil];
    [errorAlert show];
}

@end
