//
//  ContestantEntryViewController.h
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinalJeopardy : UIViewController
{
    NSArray *theContestants;
    IBOutlet UITextView *scores;
    
}

-(void)setContestants:(NSArray *)contestants;

@end
