//
//  ContestantEntryViewController.h
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import "Answer.h"

@implementation Answer

@synthesize answer;

+(Answer *)answer:(NSString *)text
{
    return [[Answer alloc]initWithAnswer:text];
}

-(id)initWithAnswer:(NSString *)theAnswer
{
    if (self = [super init])
    {
        answer = theAnswer;
        answered = NO;
    }
    return self;
}

-(BOOL)hasBeenAnswered
{
    return answered;
}

-(void)answered
{
    answered = YES;
}

@end
