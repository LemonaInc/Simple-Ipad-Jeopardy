//
//  ViewController.m
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import "ViewController.h"
#import "AnswerView.h"
#import "Answer.h"
#import "FinalJeopardy.h"

@implementation ViewController

-(IBAction)showAnswerFor:(id)sender
{
    NSInteger column = (NSInteger)[sender tag]/1000 - 1;
    NSInteger row = (NSInteger)[sender tag] % 1000/100 - 1;

    Answer *answer = (Answer *)[[answers objectAtIndex:column] objectAtIndex:row];

    if(![answer hasBeenAnswered])
    {
        AnswerView *answerView = [[AnswerView alloc] initWithNibName:@"AnswerView" bundle:nil];
        answerView.contestants = [NSArray arrayWithObjects:contestant1, contestant2, contestant3, contestant4, contestant5, nil];
    
        answerView.dollarValue = (NSInteger)[sender tag] % 1000;
    
    
        [answerView setAnswer:answer];

        [sender setTitle:@"Completed" forState:UIControlStateNormal];
    
        [[self navigationController] pushViewController:answerView animated:YES];
    }
}

-(void)addContestant1:(Contestant *)con1 andContestant2:(Contestant *)con2 andContestant3:(Contestant *)con3 andContestant4:(Contestant *)con4 andContestant5:(Contestant *)con5;
{
    contestant1 = con1;
    contestant2 = con2;
    contestant3 = con3;
    contestant4 = con4;
    contestant5 = con5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    contenstant1Label.text = contestant1.name;
    contenstant2Label.text = contestant2.name;
    contenstant3Label.text = contestant3.name;
    contenstant4Label.text = contestant4.name;
    contenstant5Label.text = contestant5.name;
    
    

    [self updateScores];
    NSArray *cat1 = [NSArray arrayWithObjects:[Answer answer:@"What blood type is the most common?"],
                    [Answer answer:@"Erythrocyte is another name for a"],
                    [Answer answer:@"Which of the following blood components provide the major defense for our bodies against invading bacteria and viruses"],
                    [Answer answer:@"The relatively clear liquid medium which carries the other cells of blood is called"],
                    [Answer answer:@"Most of the volume of normal human blood is composed of"], nil];

    NSArray *cat2 = [NSArray arrayWithObjects:[Answer answer:@"What percent of blood is plasma?"],
                     [Answer answer:@"What is blood clotting?"],
                     [Answer answer:@"What is fabrin?"],
                     [Answer answer:@"What does the blood type A represent?"],
                     [Answer answer:@"True/False Do people with good humor have a weeker immune system? "], nil];

    NSArray *cat3 = [NSArray arrayWithObjects:[Answer answer:@"What is the approxomate ammount of white blood cells in your blood?"],
                     [Answer answer:@"True/False getting under five hours of sleep will make your immune system less productive"],
                     [Answer answer:@"Whats an environmental factor that can weeken your immune system?"],
                     [Answer answer:@"What is the term for being born with a week immune system?"],
                     [Answer answer:@"What is the term to describe a immune system turning against you?"], nil];

    NSArray *cat4 = [NSArray arrayWithObjects:[Answer answer:@"Something the lymphatic system is responsible for"],
                     [Answer answer:@"The lymphatic system is part of the"],
                     [Answer answer:@"What is the term used to describe fluid in the lymphatic system?"],
                     [Answer answer:@"What is a lymph node?"],
                     [Answer answer:@"What is the lymph tissue?"], nil];

    NSArray *cat5 = [NSArray arrayWithObjects:[Answer answer:@"What is an example of a chemical barrier?"],
                     [Answer answer:@"What is an example of a Physical barrier?"],
                     [Answer answer:@"What is a Macrophange?"],
                     [Answer answer:@"What percent do neutrophills take up of white blood cells?"],
                     [Answer answer:@"What is a T cell? "], nil];

    answers = [NSArray arrayWithObjects:cat1, cat2, cat3, cat4, cat5, nil];
    
}

-(void)updateScores
{
    contestant1Score.text = [NSString stringWithFormat:@"%i", contestant1.score];
    contestant2Score.text = [NSString stringWithFormat:@"%i", contestant2.score];
    contestant3Score.text = [NSString stringWithFormat:@"%i", contestant3.score];
    contestant4Score.text = [NSString stringWithFormat:@"%i", contestant4.score];
    contestant5Score.text = [NSString stringWithFormat:@"%i", contestant5.score];
    
}

-(IBAction) finalJeopardy:(id)sender
{
    FinalJeopardy *finalJeopardy = [[FinalJeopardy alloc] initWithNibName:@"FinalJeopardy" bundle:nil];
    [finalJeopardy setContestants:[NSArray arrayWithObjects:contestant1, contestant2, contestant3, contestant4,contestant5, nil]];
    [[self navigationController] pushViewController:finalJeopardy animated:YES];
    
}

-(void)updateAvailableAnswers
{
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self updateScores];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
