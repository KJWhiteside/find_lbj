//
//  Course.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "Course.h"

@implementation Course

-(id) initFromRegion:(Region *)region withNumber:(NSInteger)number
{
    self = [super init];
    if (self)
    {
        NSMutableArray * possibleChoices = [[NSMutableArray alloc]
                                            initWithArray:region.buildings];

        NSMutableArray * buildingList = [NSMutableArray new];
        
        Building *startBuilding = [region.buildings objectAtIndex:region.startBuildingIndex];
        [buildingList addObject:startBuilding];
        [possibleChoices removeObject:startBuilding];
        
        for (int i = 0; i < (number-1); i++)
        {
            NSInteger random = arc4random_uniform((unsigned int)possibleChoices.count);
            [buildingList addObject:[possibleChoices objectAtIndex:random]];
            [possibleChoices removeObjectAtIndex:random];
        }
        
        self.buildings = [NSArray arrayWithArray:buildingList];
        
    }
    
    return self;
}

-(NSString *)showCourseAsString{
    NSMutableString * courseString = [NSMutableString new];
    for (int i = 0; i < self.buildings.count; ++i) {
        Building * current = [self.buildings objectAtIndex:i];
        [courseString appendString: [NSString stringWithFormat:@"%@ \n", current.name]];
    }
    return [NSString stringWithString:courseString];
}



@end
