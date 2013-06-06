//
//  EAChartsTableViewController_iPhoneViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EAChartsTableViewController_iPhoneViewController.h"
#import "EAChartsWebViewViewController_iPhoneViewController.h"

@interface EAChartsTableViewController_iPhoneViewController ()

@end

@implementation EAChartsTableViewController_iPhoneViewController

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
    if ([segue.identifier isEqualToString:@"ChartsWebViewViewController_iPhone"]) {
        EAChartsWebViewViewController_iPhoneViewController * asViewController = segue.destinationViewController;
        switch (self.chartType) {
            case kEAChartTableCellIntroductoryPoints:
                asViewController.htmlName = @"charts_introductory_points";
                asViewController.title = @"Introductory Points";
                break;
            case kEAChartTableCellWellnessPoints:
                asViewController.htmlName = @"charts_wellness_points";
                asViewController.title = @"Wellness Points";
                break;
            case kEAChartTableCellColicPoints:
                asViewController.htmlName = @"charts_colic_points";
                asViewController.title = @"Colic Points";
                break;
            case kEAChartTableCellEmergencyPoints:
                asViewController.htmlName = @"charts_emergency_points";
                asViewController.title = @"Emergency Points";
                break;
            case kEAChartTableCellLowBackPoints:
                asViewController.htmlName = @"charts_low_back_points";
                asViewController.title = @"Low Back Points";
                break;
            case kEAChartTableCellLaminitisPoints:
                asViewController.htmlName = @"charts_laminitis_points";
                asViewController.title = @"Laminitis Points";
                break;
            case kEAChartTableCellStifleChart:
                asViewController.htmlName = @"charts_stifle_chart";
                asViewController.title = @"Stifle Chart";
                break;
            case kEAChartTableCellShoulderPoints:
                asViewController.htmlName = @"charts_shoulder_points";
                asViewController.title = @"Shoulder Points";
                break;
            case kEAChartTableCellHyoidTmjChart:
                asViewController.htmlName = @"charts_hyoid_tmj_chart";
                asViewController.title = @"Hyoid/TMJ Chart";
                break;
            default:
                asViewController.htmlName = @"charts_introductory_points";
                asViewController.title = @"Introductory Points";
                break;
        }
    }
}

@end
