//
//  EAMeridiansTableViewController_iPhoneViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EAMeridiansTableViewController_iPhoneViewController.h"
#import "EAChartsWebViewViewController_iPhoneViewController.h"

@interface EAMeridiansTableViewController_iPhoneViewController ()

@end

@implementation EAMeridiansTableViewController_iPhoneViewController

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
    if ([segue.identifier isEqualToString:@"MeridiansWebViewViewController_iPhone"]) {
        EAChartsWebViewViewController_iPhoneViewController * asViewController = segue.destinationViewController;
        switch (self.meridianType) {
            case kEAMeridianTableCellGoverningVesssel:
                asViewController.htmlName = @"meridians_governing_vessel";
                asViewController.title = @"Governing Vessel";
                break;
            case kEAMeridianTableCellConceptionVessel:
                asViewController.htmlName = @"meridians_conception_vessel";
                asViewController.title = @"Conception Vessel";
                break;
            case kEAMeridianTableCellBladderMeridian:
                asViewController.htmlName = @"meridians_bladder_meridian_bi";
                asViewController.title = @"Bladder Meridian";
                break;
            case kEAMeridianTableCellLungMeridian:
                asViewController.htmlName = @"meridians_lung_meridian_lu";
                asViewController.title = @"Lung Meridian";
                break;
            case kEAMeridianTableCellLargeIntestineMeridian:
                asViewController.htmlName = @"meridians_large_intestine_meridian_li";
                asViewController.title = @"LI Meridian";
                break;
            case kEAMeridianTableCellStomachMeridian:
                asViewController.htmlName = @"meridians_stomach_meridian";
                asViewController.title = @"Stomach Meridian";
                break;
            case kEAMeridianTableCellSpleenMeridian:
                asViewController.htmlName = @"meridians_spleen_meridian_sp";
                asViewController.title = @"Spleen Meridian";
                break;
            case kEAMeridianTableCellHeartMeridian:
                asViewController.htmlName = @"meridians_heart_meridian_ht";
                asViewController.title = @"Heart Meridian";
                break;
            case kEAMeridianTableCellSmallIntestineMeridian:
                asViewController.htmlName = @"meridians_small_intestine_meridian_si";
                asViewController.title = @"SI Meridian";
                break;
            case kEAMeridianTableCellPericardiumMeridian:
                asViewController.htmlName = @"meridians_pericardium_meridian_pc_or_pe";
                asViewController.title = @"Pericardium Meridian";
                break;
            case kEAMeridianTableCellTripleHeaterMeridian:
                asViewController.htmlName = @"meridians_triple_heater_meridian_th";
                asViewController.title = @"Triple Heater Meridian";
                break;
            case kEAMeridianTableCellGallBladderMeridian:
                asViewController.htmlName = @"meridians_gall_bladder_meridian_gb";
                asViewController.title = @"Gall Bladder Meridian";
                break;
            case kEAMeridianTableCellLiverMeridian:
                asViewController.htmlName = @"meridians_liver_meridian_li";
                asViewController.title = @"Liver Meridian";
                break;
            case kEAMeridianTableCellKidneyMeridian:
                asViewController.htmlName = @"meridians_kidney_meridian";
                asViewController.title = @"Kidney Meridian";
                break;
            default:
                asViewController.htmlName = @"meridians_governing_vessel";
                asViewController.title = @"Governing Vessel";
                break;
        }
    }
}

@end
