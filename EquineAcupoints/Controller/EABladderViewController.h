//
//  EABladderViewController.h
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

static NSString * YOUTUBE_VIDEO_URL = @"Photonic_Health-Bladder_Opening.mp4";

@interface EABladderViewController : UIViewController{
    
    @protected
    __strong MPMoviePlayerController *player;
}

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end
