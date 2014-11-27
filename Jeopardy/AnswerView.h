//
//  ContestantEntryViewController.h
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Answer.h"

@interface AnswerView : UIViewController
{
    IBOutlet UIButton *contestant1Answered;
    IBOutlet UIButton *contestant2Answered;
    IBOutlet UIButton *contestant3Answered;
    IBOutlet UIButton *contestant4Answered;
    IBOutlet UIButton *contestant5Answered;
    IBOutlet UIButton *contestant1AnsweredIncorrectly;
    IBOutlet UIButton *contestant2AnsweredIncorrectly;
    IBOutlet UIButton *contestant3AnsweredIncorrectly;
    IBOutlet UIButton *contestant4AnsweredIncorrectly;
    IBOutlet UIButton *contestant5AnsweredIncorrectly;
    IBOutlet UITextView *answerTextView;
    
    NSArray *contestants;
    NSInteger dollarValue;
    Answer *answer;
}

@property (strong, nonatomic) NSArray *contestants;
@property (nonatomic) NSInteger dollarValue;

-(void)setAnswer:(Answer *)answer;
-(IBAction)questionAnswered:(id)sender;
-(IBAction)questionAnsweredIncorrectly:(id)sender;
-(IBAction)questionNotAnswered:(id)sender;

@end
