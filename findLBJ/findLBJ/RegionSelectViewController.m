//
//  RegionSelectViewController.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "RegionSelectViewController.h"
#import "ClueDisplayViewController.h"
#import "PlotDisplayViewController.h"
#import "Course.h"

@interface RegionSelectViewController ()

// TODO: Make an array of regions, so to select more than one.
@property (strong, nonatomic) Region * region; // of Region objects.

@end

@implementation RegionSelectViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Initialize the Prototype Region.
    self.region = [[Region alloc] initPrototype];
    
    [self performSegueWithIdentifier:@"ShowWalkthruSegue" sender:self];
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/Dark Hallway.mp3", [[NSBundle mainBundle] resourcePath]]];
    
    
    NSError *error;
    
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    audioPlayer.numberOfLoops = -1;
    
    
    if (audioPlayer == nil)
    {
        NSLog(@"%@", error.description);
    }
    else
        
        [audioPlayer play];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectRegion:(id)sender
{
    // Once region is selected, transition to the Clue Screen.
    [self performSegueWithIdentifier:@"PlotDisplaySegue" sender:self];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"PlotDisplaySegue"])
    {
        // TODO: Set Region based on choice.
        
        // Build the Course.
        Course * newCourse = [[Course alloc] initFromRegion: self.region withNumber:4];
        
        // Create VC.
        PlotDisplayViewController *controller = (PlotDisplayViewController *)segue.destinationViewController;
        
        // Pass the Course to the ClueDisplayVC.
        [controller setCourse:newCourse];
    }
}

@end
