//
//  ContestantEntryViewController.h
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import "AnswerView.h"
#import "Contestant.h"
#import "Answer.h"

@implementation AnswerView

@synthesize contestants;
@synthesize dollarValue;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)setAnswer:(Answer *)theAnswer
{
    answer = theAnswer;
}

-(IBAction)questionAnswered:(id)sender
{
    Contestant *contentant = (Contestant *)[self.contestants objectAtIndex:[sender tag]];
    contentant.score += self.dollarValue;
    [answer answered];
    [[self navigationController] popViewControllerAnimated:YES];
}

-(IBAction)questionAnsweredIncorrectly:(id)sender
{
    Contestant *contentant = (Contestant *)[self.contestants objectAtIndex:[sender tag]];
    contentant.score -= self.dollarValue;
}

-(IBAction)questionNotAnswered:(id)sender
{
    [answer answered];
    [[self navigationController] popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [contestant1Answered titleLabel].text = [[self.contestants objectAtIndex:0] name];
    [contestant2Answered titleLabel].text = [[self.contestants objectAtIndex:1] name];
    [contestant3Answered titleLabel].text = [[self.contestants objectAtIndex:2] name];
    [contestant4Answered titleLabel].text = [[self.contestants objectAtIndex:3] name];
    [contestant5Answered titleLabel].text = [[self.contestants objectAtIndex:4] name];
    [contestant1AnsweredIncorrectly titleLabel].text = [[self.contestants objectAtIndex:0] name];
    [contestant2AnsweredIncorrectly titleLabel].text = [[self.contestants objectAtIndex:1] name];
    [contestant3AnsweredIncorrectly titleLabel].text = [[self.contestants objectAtIndex:2] name];
    [contestant4AnsweredIncorrectly titleLabel].text = [[self.contestants objectAtIndex:3] name];
    [contestant5AnsweredIncorrectly titleLabel].text = [[self.contestants objectAtIndex:4] name];
                                                        
    
    answerTextView.text = answer.answer;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
