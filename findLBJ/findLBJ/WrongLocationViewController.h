//
//  WrongLocationViewController.h
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//
#import <UIKit/UIKit.h>

@class WrongLocationViewController;


@protocol WrongLocationViewControllerDelegate <NSObject>
- (void)WrongLocationViewControllerDidSkip:(WrongLocationViewController *)controller;
@end

@interface WrongLocationViewController : UIViewController

@property Building * desiredBuilding;
@property float closeness;
@property NSInteger currentBuildingIndex;
@property NSInteger currentClueIndex;

@property (nonatomic, weak) id <WrongLocationViewControllerDelegate> delegate;

@end
