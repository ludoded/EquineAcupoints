//
//  EABladderViewController_iPadViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 27.07.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EABladderViewController_iPadViewController.h"

@interface EABladderViewController_iPadViewController ()

@end

@implementation EABladderViewController_iPadViewController

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
    self.scrollView.contentSize = CGSizeMake(768, 915);
	[self customizeVideoPlayer];
}


- (void)customizeVideoPlayer
{
    NSString * vidPath = [[NSBundle mainBundle] pathForResource:YOUTUBE_VIDEO_URL ofType:nil];
    NSURL * vidURL = [NSURL fileURLWithPath:vidPath];
    player = [[MPMoviePlayerController alloc] init];
    player.view.frame = CGRectMake(20, 20, 728, 500);
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
