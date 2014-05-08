//
//  PlotDisplayViewController.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "PlotDisplayViewController.h"
#import "ClueDisplayViewController.h"

@interface PlotDisplayViewController ()

@end

@implementation PlotDisplayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated
{
    NSLog(@"View.");
}

- (void) viewDidAppear:(BOOL)animated
{
    NSLog(@"View Appeared.");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneButtonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"ClueDisplaySegue" sender:self];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"ClueDisplaySegue"])
    {
        
        // Create VC.
        ClueDisplayViewController *controller = (ClueDisplayViewController *)segue.destinationViewController;
        
        // Pass the Course to the ClueDisplayVC.
        [controller setCourse:self.course];
        [controller setCurrentBuildingIndex:0];
    }
}

@end
