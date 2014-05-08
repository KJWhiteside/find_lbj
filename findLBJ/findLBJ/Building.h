//
//  Building.h
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Building : NSObject

@property CLLocation * location;
@property NSArray * clues; // of Clue objects.
@property NSString * name;

-(id) initWithLocation:(CLLocation*)location
           andClueList:(NSArray*)clues  andName:(NSString *) name;


-(id) initWithLocation:(CLLocation *)location andName:(NSString *) name;


@end
