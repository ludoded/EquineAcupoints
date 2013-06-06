//
//  EANavigationControllerViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 07.05.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EANavigationController.h"

@interface EANavigationController ()

@end

@implementation EANavigationController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
    return [self.visibleViewController shouldAutorotate];
}

@end
