//
//  DQNestedExampleViewController.m
//  iosFireEyesInstructions
//
//  Created by Catherine Fisher on 5/22/14.
//  Copyright (c) 2014 Deque Systems. All rights reserved.
//

#import "DQNestedExampleViewController.h"

@interface DQNestedExampleViewController ()

@end

@implementation DQNestedExampleViewController {
    IBOutlet UILabel *_ExampleLabel;
    IBOutlet UILabel *_DogLabel;
    IBOutlet UILabel *_CatLabel;
    IBOutlet UILabel *_FishLabel;
    IBOutlet UIButton *_DogDisplay;
    IBOutlet UIButton *_CatDisplay;
    IBOutlet UIButton *_FishDisplay;
    IBOutlet UITextView *_TextView;
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
    [_TextView setText:@"Remember our music player?  In this view we have added a parent view around our entire player.  This is a very reasonable separation of functionality"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)shouldAutorotate {
    return NO;
}

@end