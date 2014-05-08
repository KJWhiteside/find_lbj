//
//  Course.h
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject

@property NSArray * buildings; // Of Building Objects.

-(id)initFromRegion:(Region*)region withNumber:(NSInteger)number;

-(NSString *)showCourseAsString;

@end
