//
//  Region.h
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Region : NSObject

@property NSArray * buildings; // of Building Objects.
@property NSInteger startBuildingIndex;
@property NSString * plotText;

-(id)initPrototype;

@end
