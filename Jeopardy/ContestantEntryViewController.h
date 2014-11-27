//
//  ContestantEntryViewController.h
//  Jeopardy
//
//  Created by Jaxon Stevens on 04/08/14.
//  Copyright (c) 2014 Lemona Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContestantEntryViewController : UIViewController
{
    IBOutlet UITextField *contestant1Name;  
    IBOutlet UITextField *contestant2Name;  
    IBOutlet UITextField *contestant3Name;  
    IBOutlet UITextField *contestant4Name;
    IBOutlet UITextField *contestant5Name;
}

@property (strong, nonatomic) UITextField *contestant1Name;
@property (strong, nonatomic) UITextField *contestant2Name;
@property (strong, nonatomic) UITextField *contestant3Name;
@property (strong, nonatomic) UITextField *contestant4Name;
@property (strong, nonatomic) UITextField *contestant5Name;

-(IBAction)saveNames:(id)sender;

@end
