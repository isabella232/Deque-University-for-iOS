//
//  DQLabelExampleViewController.m
//  iosFireEyesInstructions
//
//  Created by Catherine Fisher on 2/12/14.
//  Copyright (c) 2014 Deque Systems. All rights reserved.
//

#import "DQLabelExampleViewController.h"

@interface DQLabelExampleViewController () {
    IBOutlet UILabel *_ExampleLabel;
    IBOutlet UILabel *_DogLabel;
    IBOutlet UILabel *_CatLabel;
    IBOutlet UILabel *_FishLabel;
    IBOutlet UIButton *_DogDisplay;
    IBOutlet UIButton *_CatDisplay;
    IBOutlet UIButton *_FishDisplay;
    IBOutlet UITextView *_TextView;
}

@end

@implementation DQLabelExampleViewController

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
	[_TextView setText:@"Below is an example where the context of the buttons is obvious.  Clearly each button is going to display a picture.  The labels for each button are the pictures that are to be displayed."];
    
    [_CatDisplay addTarget:self action:@selector(displayAlert:) forControlEvents:UIControlEventTouchDown];
    [_DogDisplay addTarget:self action:@selector(displayAlert:) forControlEvents:UIControlEventTouchDown];
    [_FishDisplay addTarget:self action:@selector(displayAlert:) forControlEvents:UIControlEventTouchDown];
    
    [_CatDisplay setAccessibilityLabel:@"Display Cat"];
    [_DogDisplay setAccessibilityLabel:@"Display Dog"];
    [_FishDisplay setAccessibilityLabel:@"Display Fish"];
    
    [_CatDisplay setAccessibilityHint:@"Modify image display"];
    [_FishDisplay setAccessibilityHint:@"Modify image display"];
    [_DogDisplay setAccessibilityHint:@"Modify image display"];
    
    [_DogLabel setText:@"Display a picture of a dog:"];
    [_CatLabel setText:@"Display a picture of a cat:"];
    [_FishLabel setText:@"Display a picture of a fish:"];
    
    [_DogLabel setIsAccessibilityElement:NO];
    [_CatLabel setIsAccessibilityElement:NO];
    [_FishLabel setIsAccessibilityElement:NO];
    
    
}

- (void)displayAlert:(id)sender {
    
    UIButton* button = (UIButton*)sender;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Picture"
                                                    message:[button accessibilityLabel]
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end