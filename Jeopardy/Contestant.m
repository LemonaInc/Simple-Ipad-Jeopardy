//
//  Contestant.m
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import "Contestant.h"

@implementation Contestant

@synthesize name;
@synthesize score;

-(id)initWithName:(NSString *)contestantName
{
    if (self = [super init])
    {
        self.name = contestantName;
    }
    return self;
}

@end
