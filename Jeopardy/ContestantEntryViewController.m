//
//  ContestantEntryViewController.m
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import "ContestantEntryViewController.h"
#import "ViewController.h"
#import "Contestant.h"

@implementation ContestantEntryViewController

@synthesize contestant1Name;
@synthesize contestant2Name;
@synthesize contestant3Name;
@synthesize contestant4Name;
@synthesize contestant5Name;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)saveNames:(id)sender
{
    ViewController *mainController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    
    Contestant *con1 = [[Contestant alloc] initWithName:contestant1Name.text];
    Contestant *con2 = [[Contestant alloc] initWithName:contestant2Name.text];
    Contestant *con3 = [[Contestant alloc] initWithName:contestant3Name.text];
    Contestant *con4 = [[Contestant alloc] initWithName:contestant4Name.text];
    Contestant *con5 = [[Contestant alloc] initWithName:contestant5Name.text];
    
    [mainController addContestant1:con1 andContestant2:con2 andContestant3:con3 andContestant4:con4 andContestant5:con5];
    
    [[self navigationController] pushViewController:mainController animated:YES];
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
    // Do any additional setup after loading the view from its nib.
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
