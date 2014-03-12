//
//  DQLabalInformationViewController.m
//  iosFireEyesInstructions
//
//  Created by Catherine Fisher on 2/10/14.
//  Copyright (c) 2014 Deque Systems. All rights reserved.
//

#import "DQLabalInformationViewController.h"

@interface DQLabalInformationViewController ()

@end

@implementation DQLabalInformationViewController {
    IBOutlet UITextView *_TextView1;
    IBOutlet UITextView *_TextView2;
    IBOutlet UILabel *_WhatLabel;
    IBOutlet UILabel *_ImportantLabel;
    IBOutlet UILabel *_TitleLabel;
    IBOutlet UIImageView *_ImageView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[_TextView1 setText:@"Labels help identify 'What' an object is.  Labels should be short and consise.  If you are tempted to make a label longer than a word or two, it is likely that the information you're adding belongs in the hint.  Labels should start with a capital letter and end with no punctuation.  This helps voiceover get the correct inflection.  Labels should not contain information about the type of control.  This information is stored in the trait."];
    
    [_TextView2 setText:@"Labels provide information to voiceover quickly.  Unlike hints, whose readout is delayed.  When designing accessible applications you want to keep two particular users in mind.  The power user, and the new user.  Think of labels as something to help power users.  The person who knows that a row of buttons are links, or that they play music.  They don't need to be reminded that a button is going to visit a webpage, they just need to know which page they will be visiting."];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end