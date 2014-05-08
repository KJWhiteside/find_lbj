//
//  ClueDisplayViewController.h
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "WrongLocationViewController.h"
#import "Building.h"
#import "Course.h"


@interface ClueDisplayViewController : UIViewController
<CLLocationManagerDelegate, WrongLocationViewControllerDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) Course *course;
@property (nonatomic) NSInteger currentBuildingIndex;
@property (strong, nonatomic) NSDate * startTime;
@property (strong, nonatomic) IBOutlet UILabel *clueDisplay;


@end
