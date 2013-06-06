//
//  EATabBarController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 07.05.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EATabBarController.h"

@interface EATabBarController ()

@end

@implementation EATabBarController

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
    return [self.selectedViewController shouldAutorotate];
}

@end
