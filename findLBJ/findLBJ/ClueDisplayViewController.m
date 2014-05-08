//
//  ClueDisplayViewController.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "ClueDisplayViewController.h"
#import "PlotDisplayViewController.h"
#import "ScoreDisplayViewController.h"
#import "WrongLocationViewController.h"
#import "Building.h"

@interface ClueDisplayViewController ()


@property NSInteger currentClueIndex;

@end

@implementation ClueDisplayViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.locationManager = [CLLocationManager new];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
    
    [self setStartTime:[NSDate date]];
}

-(void)viewWillAppear:(BOOL)animated
{
    if (self.currentBuildingIndex != self.course.buildings.count)
    {
        Building * currentBuilding =
        [self.course.buildings objectAtIndex:self.currentBuildingIndex];
        
        [self setCurrentClueIndex:0];
        
        NSString * currentClue = [currentBuilding.clues objectAtIndex:self.currentClueIndex];
        
        [self.clueDisplay setText:currentClue];
    }
}

-(void)viewDidAppear:(BOOL)animated
{
    if (self.currentBuildingIndex == self.course.buildings.count)
    {
        [self performSegueWithIdentifier:@"ScoreDisplaySegue" sender:self];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)checkLocation:(id)sender
{
    
    Building * desiredBuilding = [self.course.buildings objectAtIndex:self.currentBuildingIndex];
    
    CLLocation * desiredLocation = desiredBuilding.location;
    CLLocation * currentLocation = [self.locationManager location];
    
    CLLocationDistance closeness = [currentLocation distanceFromLocation:desiredLocation];
    
    
    if (closeness < 65)
    {
        UIAlertView *foundAlert = [[UIAlertView alloc]
                                   initWithTitle:[NSString stringWithFormat:@"Well Done"]
                                   message:[NSString stringWithFormat:@"You have found the right building!"]
                                   delegate:self
                                   cancelButtonTitle:@"OK"
                                   otherButtonTitles:nil];
        
        [foundAlert show];
        
        self.currentBuildingIndex++;
        
        if (self.currentBuildingIndex == self.course.buildings.count)
        {
            [self performSegueWithIdentifier:@"ScoreDisplaySegue" sender:self];
        }
        else
        {
            Building * currentBuilding =
                [self.course.buildings objectAtIndex:self.currentBuildingIndex];

            [self setCurrentClueIndex:0];

            NSString * currentClue = [currentBuilding.clues objectAtIndex:self.currentClueIndex];
            [self.clueDisplay setText:currentClue];
        }
    }
    else
    {
        [self performSegueWithIdentifier:@"WrongLocationSegue"
                                  sender:self];
    }
}


- (IBAction)helpButtonPressed:(id)sender
{
    Building * currentBuilding = [self.course.buildings objectAtIndex:self.currentBuildingIndex];
    self.currentClueIndex++;
    if (self.currentClueIndex < currentBuilding.clues.count)
    {
        NSString * currentClue = [currentBuilding.clues objectAtIndex:self.currentClueIndex];
        [self.clueDisplay setText:currentClue];
        
        // Calendar mojo, which is essentially magic.
        NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *offsetComponents = [NSDateComponents new];
        
        // Creates a negative 5 minute time.
        [offsetComponents setMinute:-5];
        
        // Creates a new NSDate with time 5 minutes before the current Start Time.
        NSDate *newTime = [gregorian dateByAddingComponents:offsetComponents
                                                     toDate:self.startTime
                                                    options:0];

        // Set Start Time to near (earlier) start time.
        [self setStartTime:newTime];
        
    }
    else
    {
        UIAlertView *outOfCluesAlert = [[UIAlertView alloc]
                                   initWithTitle:[NSString stringWithFormat:@"No More Clues!"]
                                   message:[NSString stringWithFormat:@"There aren't any more clues!"]
                                   delegate:self
                                   cancelButtonTitle:@"OK"
                                   otherButtonTitles:nil];
        
        [outOfCluesAlert show];
    }
    
}

#pragma mark -

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"ScoreDisplaySegue"])
    {
        // Create VC.
        ScoreDisplayViewController *controller =
            (ScoreDisplayViewController *)segue.destinationViewController;
        
        // Pass the Start Time to the ScoreDisplayVC.
        [controller setStartTime:self.startTime];
    }
    else if([segue.identifier isEqualToString:@"WrongLocationSegue"])
    {
        // Create VC.
        WrongLocationViewController *controller =
            (WrongLocationViewController *)segue.destinationViewController;
        
        Building * desiredBuilding = [self.course.buildings objectAtIndex:self.currentBuildingIndex];
        
        CLLocation * desiredLocation = desiredBuilding.location;
        CLLocation * currentLocation = [self.locationManager location];
        
        CLLocationDistance closeness = [currentLocation distanceFromLocation:desiredLocation];
        
        [controller setCurrentBuildingIndex:self.currentBuildingIndex];
        [controller setCloseness:closeness];
        [controller setDelegate:self];
    }
}

#pragma mark -
#pragma mark CLLocationManagerDelegate

-(void)locationManager:(CLLocationManager *)manager
   didUpdateToLocation:(CLLocation *)newLocation
          fromLocation:(CLLocation *)oldLocation
{
    // DO STUFF WITH UPDATED LOCATION.
}

-(void)locationManager:(CLLocationManager *)manager
      didFailWithError:(NSError *)error
{
    UIAlertView *errorAlert =
    [[UIAlertView alloc] initWithTitle:@"Location Error"
                               message:error.debugDescription
                              delegate:self
                     cancelButtonTitle:@"OK"
                     otherButtonTitles:nil];
    [errorAlert show];
}

#pragma mark - WrongLocationViewControllerDelegate

- (void)WrongLocationViewControllerDidSkip:(WrongLocationViewController *)controller
{
    self.currentBuildingIndex++;
    
    // Calendar mojo, which is essentially magic.
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *offsetComponents = [NSDateComponents new];
    
    // Creates a negative 5 minute time.
    [offsetComponents setMinute:-30];
    
    // Creates a new NSDate with time 5 minutes before the current Start Time.
    NSDate *newTime = [gregorian dateByAddingComponents:offsetComponents
                                                 toDate:self.startTime
                                                options:0];
    
    // Set Start Time to near (earlier) start time.
    [self setStartTime:newTime];

}

@end
