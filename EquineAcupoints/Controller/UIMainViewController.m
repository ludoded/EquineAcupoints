//
//  UIMainViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "UIMainViewController.h"

@interface UIMainViewController () {
    CGRect _photoImageViewFrame;
}

@end

@implementation UIMainViewController

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
    
    [self customizeAppearance];
}

- (void)customizeAppearance
{
    _photoImageViewFrame = _photoImageView.frame;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Web Page"
                                                                              style:UIBarButtonSystemItemDone
                                                                             target:self action:@selector(openWebPage)];
    [_bladderButton setType:BButtonTypeDanger];
    [_assessmentsButton setType:BButtonTypeDanger];
    [_chartsButton setType:BButtonTypeDanger];
    [_meridiansButton setType:BButtonTypeDanger];
    
}

- (void)openWebPage
{
    [self performSegueWithIdentifier:@"MainWebPageIdentifier" sender:nil];
}


- (BOOL)shouldAutorotate {
    
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (orientation == UIInterfaceOrientationLandscapeLeft || orientation == UIInterfaceOrientationLandscapeRight) {
        [_photoImageView setFrame:CGRectMake(224, 34, 280, 187)];
    } else {
//        [[UIDevice currentDevice] platformType]
        [_photoImageView setFrame:_photoImageViewFrame];
    }
    
    return YES;
}

@end
