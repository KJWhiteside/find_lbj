//
//  Region.m
//  findLBJ
//
//  Created by Kevin Whiteside on 3/28/14.
//  Copyright (c) 2014 App-t Pupils. All rights reserved.
//

#import "Region.h"

@implementation Region

-(id)initPrototype
{
    self = [super init];
    if (self)
    {
        NSMutableArray * tempBuildingList = [NSMutableArray new];
        
        // MITTE //
        CLLocationDegrees mitteLat = 29.889416;
        CLLocationDegrees mitteLong = -97.947772;
        
        CLLocation *mitteLoc = [[CLLocation alloc] //
                                initWithLatitude:mitteLat
                                longitude:mitteLong];
        
        NSString * mitteName = [NSString stringWithFormat:@"Mitte"];
        
        NSMutableArray * tempClues = [NSMutableArray new];
        
        [tempClues addObject:@"You're standing right here! Click \"IM HERE\" to solve your first clue!"];
        [tempClues addObject:@"You really shouldn't have needed a second clue to get this."];
        [tempClues addObject:@"Really?"];

        [tempBuildingList addObject:[[Building alloc] initWithLocation:mitteLoc andClueList:tempClues andName:mitteName]];
        
        
        // ALKEK //
        CLLocationDegrees alkekLat = 29.8887175;
        CLLocationDegrees alkekLong = -97.94306175;

        CLLocation *alkekLoc = [[CLLocation alloc] //
                                initWithLatitude:alkekLat
                                longitude:alkekLong];
        
        
        NSString * alkekName = [NSString stringWithFormat:@"Alkek Library"];
        NSMutableArray * alkekClues = [NSMutableArray new];
        
        [alkekClues addObject:@"Apparantly, the thief is a friend of the arts! The statues was recently reported being seen at the Witliff collections."];
        [alkekClues addObject:@"An informant wants to meet you at the Student Learning Assistance Center where free tutoring is offered. Hopefully, he'll be able to help you find the statue."];
        [alkekClues addObject:@"The Texas Star recently posted information on the LBJ statue being narrowly missed in a building that contains nearly 2 million books. Head over and see if you can find your next clue."];
        [alkekClues addObject:@"The statue of LBJ was seen in the Texas State University Building with the Abbreviation: ALK"];

        [tempBuildingList addObject:[[Building alloc] initWithLocation:alkekLoc andClueList:alkekClues andName:alkekName]];
        
        
        // DERRICK //
        CLLocationDegrees derrickLat = 29.88935975;
        CLLocationDegrees derrickLong = -97.94215375;
        
        CLLocation *derrickLoc = [[CLLocation alloc]
                                  initWithLatitude:derrickLat
                                  longitude:derrickLong];
        
        NSString * derrickName = [NSString stringWithFormat:@"Derrick Hall"];
        
        NSMutableArray * derrickClues = [NSMutableArray new];

        [derrickClues addObject:@"The team over at the state of the art Linux, Solaris and digital forensics computer labs are getting together to go hunt for the statue. Get over there and see if you can find your next clue."];
        
        [derrickClues addObject:@"There was an emergency Email alert just issued to be on the lookout for the statue where Sociology, Math, Computer Science and the Airforce reserve officer training hold classes on Campus."];
        
        [derrickClues addObject:@"The statue of LBJ was seen in the Texas State University Building with the Abbreviation: DERR"];
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:derrickLoc andClueList:derrickClues andName:derrickName]];
        
        
        
        // OLD MAIN //
        CLLocationDegrees oldMainLat = 29.88938075;
        CLLocationDegrees oldMainLong = -97.9389095;
        
        CLLocation *oldMainLoc = [[CLLocation alloc] //
                                  initWithLatitude:oldMainLat
                                  longitude:oldMainLong];
        
        NSString * oldMainName = [NSString stringWithFormat:@"Old Main"];
        
        NSMutableArray * oldMainClues = [NSMutableArray new];
        
        
        [oldMainClues addObject:@"The statue was recently seen perched up on the balcony where general assemblies, plays and presentations were once held. You'll know it be its ornate carved ceilings and hand crafted metal ductwork."];
        
        [oldMainClues addObject:@"Your next clue awaits you at a castle-like landmark here on the Texas State University campus. You should get over to the university’s very first building right away!"];
        
        [oldMainClues addObject:@"The statue of LBJ was seen in the Texas State University Building with the Abbreviation: OM"];
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:oldMainLoc andClueList:oldMainClues andName:oldMainName]];
        
        
        // FLOWERS //
        CLLocationDegrees flowersLat = 29.888903;
        CLLocationDegrees flowersLong = -97.940283;
        
        CLLocation *flowersLoc = [[CLLocation alloc] //
                                  initWithLatitude:flowersLat
                                  longitude:flowersLong];
        
        NSString * flowersName = [NSString stringWithFormat:@"Flowers Hall"];
        
        NSMutableArray * flowersClues = [NSMutableArray new];

        [flowersClues addObject:@"A ransom note was left inside a building with a 40-foot-tall mural that depicts the intellectual pursuits of humanity; a work of the late James Buchanan “Buck” Winn. Better get going to get your next clue."];
        
        [flowersClues addObject:@"You have a hunch there may be additional clues in the building that includes a sculpture made of 138 engraved concrete blocks and \"Blenke Glass\""];
        
        [flowersClues addObject:@"Have you tried looking in the building located at the east end of the Quad and is the last building on the south side just below Old Main?"];
        
        [flowersClues addObject:@"Try looking in the Texas State University building with the abbreviation: FH"];
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:flowersLoc andClueList:flowersClues andName:flowersName]];
        
        
        
        // TAYLOR-MURPHY //
        CLLocationDegrees tmhLat = 29.889400;
        CLLocationDegrees tmhLong = -97.941465;
        
        CLLocation *tmhLoc = [[CLLocation alloc] //
                              initWithLatitude:tmhLat
                              longitude:tmhLong];
        
        NSString * tmhName = [NSString stringWithFormat:@"Taylor-Murphy History"];
        
        NSMutableArray * tmhClues = [NSMutableArray new];
        
        [tmhClues addObject:@"You have been told the statue was drug into a building with a mosaic-tiled central courtyard and fountain. If you can figure it out, you will get your next clue."];
        
        [tmhClues addObject:@"There was an emergency Email alert to be on the lookout for the LBJ statue in the building that hosts the Texas History Unplugged concert series."];
        
        [tmhClues addObject:@"Try checking a building located on the Quad. The east side of the building faces North LBJ and the front entrance faces the Quad  to the south."];
        
        [tmhClues addObject:@"The statue of LBJ was seen in the Texas State University building with the abbreviation: TMH"];
        
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:tmhLoc andClueList:tmhClues andName:tmhName]];
        
        
        
        // LAMPASAS //
        CLLocationDegrees lampLat = 29.889137;
        CLLocationDegrees lampLong = -97.939382;
        
        CLLocation *lampLoc = [[CLLocation alloc] initWithLatitude:lampLat longitude:lampLong];
        
        NSString * lampName = [NSString stringWithFormat:@"Lampasas Hall"];
        NSMutableArray * lampClues = [NSMutableArray new];
        
        [lampClues addObject:@"A group is getting together to find the statue where the gallery of the common experience occurs each semester. Head over to join the fun and get your next clue."];
        
        [lampClues addObject:@"A friend has asked to meet you at the Honors coffee forum to discuss a reward for finding the statue. Head over for coffee and your next clue to one of the only buildings in the area with a student kitchen and lounge."];
        
        [lampClues addObject:@"The statue of LBJ was seen in the Texas State University Building with the Abbreviation: LAMP"];
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:lampLoc andClueList:lampClues andName:lampName]];
        
        
        
        // EVANS //
        CLLocationDegrees evansLat = 29.888709;
        CLLocationDegrees evansLong = -97.941731;
        
        CLLocation *evansLoc = [[CLLocation alloc] //
                                initWithLatitude:evansLat
                                longitude:evansLong];
        
        NSString * evansName = [NSString stringWithFormat:@"Evans Liberal Arts"];
        
        NSMutableArray * evansClues = [NSMutableArray new];
        
        [evansClues addObject:@"Additional clues can be found where a 2008 Presidential campaign speech by Senator Ted Kennedy took place."];
        
        [evansClues addObject:@"A professor has asked to meet with you to get your next clue where foundation for knowledge in humanities and social sciences are taught"];
        
        [evansClues addObject:@"The statue of LBJ was seen in the Texas State University Building with the Abbreviation: ELA"];
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:evansLoc andClueList:evansClues andName:evansName]];
        
        
        
        
        // SCHNEDIER //
        CLLocationDegrees schneiderLat = 29.890885;
        CLLocationDegrees schneiderLong = -97.940605;
        
        CLLocation *schneiderLoc = [[CLLocation alloc] //
                                    initWithLatitude:schneiderLat
                                    longitude:schneiderLong];
        
        NSString * schneiderName = [NSString stringWithFormat:@"Schneider Music Library"];
        
        NSMutableArray * schneiderClues = [NSMutableArray new];
        
        [schneiderClues addObject:@"The Texas Star had an article about someone setting up the statue in one of the regularly-held ensembles hosted in this building."];
        
        [schneiderClues addObject:@"Try going From the Quad, turn left (north) on the sidewalk next to Psychology on North LBJ Drive. At the corner of North LBJ Drive and Pleasant Street, go north."];
        
        [schneiderClues addObject:@"Try following your ears; this building has been “Instument”-al in the development of local musicians."];
        
        [schneiderClues addObject:@"The statue of LBJ was seen in the Texas State University building with the abbreviation: MUS"];
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:schneiderLoc andClueList:schneiderClues andName:schneiderName]];
        
        // UAC //
        CLLocationDegrees uacLat = 29.888039;
        CLLocationDegrees uacLong = -97.942193;
        
        CLLocation *uacLoc = [[CLLocation alloc] //
                              initWithLatitude:uacLat
                              longitude:uacLong];
        
        NSString * uacName = [NSString stringWithFormat:@"Undergraduate Academic Center"];
        
        NSMutableArray * uacClues = [NSMutableArray new];
        
        [uacClues addObject:@"Your best friend just texted you saying they saw the LBJ statue being carried into a buidling that is part of the 2012-2017 Master Plan campus update."];
        
        [uacClues addObject:@"Have you tried looking for additional clues in the building that houses the Office of the Dean?"];
        
        [uacClues addObject:@"The statue of LBJ was seen in the Texas State University Building with the Abbreviation: UAC"];
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:uacLoc
                                                           andClueList:uacClues
                                                               andName:uacName]];
        
        
        
        // LBJ //
        CLLocationDegrees lbjLat = 29.889388;
        CLLocationDegrees lbjLong = -97.944435;
        
        CLLocation *lbjLoc = [[CLLocation alloc] //
                              initWithLatitude:lbjLat
                              longitude:lbjLong];
        
        NSString * lbjName = [NSString stringWithFormat:@"LBJ Student Center"];
        
        NSMutableArray * lbjClues = [NSMutableArray new];
        
        [lbjClues addObject:@"Maybe you should check out the only on-campus bar to see if you can find any shady characters?"];
        
        [lbjClues addObject:@"From the quad, try traveling the series of ramps along the east side and the south side of Alkek Library that rise to a mall area between the Library and the Teaching Theater and find the building on your right to get your next clue."];
        
        [lbjClues addObject:@"The statue of LBJ was seen in the Texas State University Building with the Abbreviation: LBJ"];
        
        [tempBuildingList addObject:[[Building alloc] initWithLocation:lbjLoc andClueList:lbjClues andName:lbjName]];
        
        
        
        self.buildings = [NSArray arrayWithArray:tempBuildingList];
        
        self.startBuildingIndex = 0;
        
    }

    return self;
    
}











@end