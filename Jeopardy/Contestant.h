//
//  Contestant.h
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Contestant : NSObject
{
    NSString *name;
    NSInteger score;
}

@property (strong, nonatomic) NSString *name;
@property (nonatomic) NSInteger score;

-(id)initWithName:(NSString *)name;

@end
