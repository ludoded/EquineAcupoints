//
//  EABladderViewController_iPhoneViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EABladderViewController_iPhoneViewController.h"

@interface EABladderViewController_iPhoneViewController ()

@end

@implementation EABladderViewController_iPhoneViewController

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
    self.scrollView.contentSize = CGSizeMake(320, 500);
	[self customizeVideoPlayer];
}


- (void)customizeVideoPlayer
{
    NSString * vidPath = [[NSBundle mainBundle] pathForResource:YOUTUBE_VIDEO_URL ofType:nil];
    NSURL * vidURL = [NSURL fileURLWithPath:vidPath];
    player = [[MPMoviePlayerController alloc] init];
    player.view.frame = CGRectMake(20, 20, 280, 160);
    player.backgroundView.backgroundColor = [UIColor clearColor];
    player.contentURL = vidURL;
    [player prepareToPlay];
    player.controlStyle = MPMovieControlStyleDefault;
    player.shouldAutoplay = NO;
    player.movieSourceType = MPMovieSourceTypeFile;
    player.scalingMode = MPMovieScalingModeAspectFit;
    
    [self.scrollView addSubview:player.view];
    [player play];
}

@end
