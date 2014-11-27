//
//  ContestantEntryViewController.h
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Answer : NSObject
{
    NSString *answer;
    BOOL answered;
}

@property (strong, nonatomic) NSString *answer;

+(Answer *)answer:(NSString *)text;

-(id)initWithAnswer:(NSString *)theAnswer;

-(void)answered;
-(BOOL)hasBeenAnswered;

@end
