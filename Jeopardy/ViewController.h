//
//  ViewController.h
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contestant.h"

@interface ViewController : UIViewController
{
    Contestant *contestant1;
    Contestant *contestant2;
    Contestant *contestant3;
    Contestant *contestant4;
    Contestant *contestant5;
    
    IBOutlet UILabel *contenstant1Label;
    IBOutlet UILabel *contenstant2Label;
    IBOutlet UILabel *contenstant3Label;
    IBOutlet UILabel *contenstant4Label;
    IBOutlet UILabel *contenstant5Label;
    
    IBOutlet UILabel *contestant1Score;
    IBOutlet UILabel *contestant2Score;
    IBOutlet UILabel *contestant3Score;
    IBOutlet UILabel *contestant4Score;
    IBOutlet UILabel *contestant5Score;
    
    NSArray *answers;
    
}

-(IBAction) finalJeopardy:(id)sender;
-(IBAction) showAnswerFor:(id)sender;
-(void)updateScores;
-(void)updateAvailableAnswers;
-(void)addContestant1:(Contestant *)con1 andContestant2:(Contestant *)con2 andContestant3:(Contestant *)con3 andContestant4:(Contestant *)con4 andContestant5:(Contestant *)con5;


@end
