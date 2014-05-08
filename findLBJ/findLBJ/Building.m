//
//  Building.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "Building.h"

@implementation Building

-(id) initWithLocation:(CLLocation *)location andClueList:(NSArray *)clues andName:(NSString *) name
{
    self = [super init];
    if (self)
    {
        self.location = location;
        self.clues = clues;
        self.name = name;
    }
    
    return self;
}

-(id) initWithLocation:(CLLocation *)location andName:(NSString *) name
{
    self = [self initWithLocation:location andClueList:nil andName:name];
    return self;
}


@end
