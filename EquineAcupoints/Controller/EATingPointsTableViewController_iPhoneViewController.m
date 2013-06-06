//
//  EATingPointsTableViewController_iPhoneViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EATingPointsTableViewController_iPhoneViewController.h"
#import "EAChartsWebViewViewController_iPhoneViewController.h"

@interface EATingPointsTableViewController_iPhoneViewController ()

@end

@implementation EATingPointsTableViewController_iPhoneViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"TingWebViewViewController_iPhone"]) {
        EAChartsWebViewViewController_iPhoneViewController * asViewController = segue.destinationViewController;
        switch (self.tingType) {
            case kEATingTableCellIntro:
                asViewController.htmlName = @"ting_intro";
                asViewController.title = @"Ting Intro";
                break;
            case kEATingTableCellFrontFeet:
                asViewController.htmlName = @"ting_front_feet";
                asViewController.title = @"Front Feet";
                break;
            case kEATingTableCellFrontFeetCaudal:
                asViewController.htmlName = @"ting_front_feet_caudial";
                asViewController.title = @"Front Feet Caudial";
                break;
            case kEATingTableCellBackFeet:
                asViewController.htmlName = @"ting_back_feet";
                asViewController.title = @"Back Feet";
                break;
            case kEATingTableCellBackFeetCaudal:
                asViewController.htmlName = @"ting_back_feet_caudal";
                asViewController.title = @"Back Feet Caudial";
                break;

            default:
                asViewController.htmlName = @"ting_intro";
                asViewController.title = @"Ting Intro";
                break;
        }
    }
}

@end
