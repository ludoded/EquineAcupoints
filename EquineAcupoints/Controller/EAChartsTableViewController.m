//
//  EAChartsTableViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EAChartsTableViewController.h"


const int CHARTS_TABLEVIEW_NUMBER_OF_ROWS = 9;

@interface EAChartsTableViewController ()

@end

@implementation EAChartsTableViewController

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

#pragma mark UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return CHARTS_TABLEVIEW_NUMBER_OF_ROWS;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell;
    switch (indexPath.row) {
        case 0:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerIntroductoryPoints"];
            break;
            
        case 1:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerWellnessPoints"];
            break;
            
        case 2:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerColicPoints"];
            break;
            
        case 3:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerEmergencyPoints"];
            break;
            
        case 4:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerLowBackPoints"];
            break;
            
        case 5:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerLaminitisPoints"];
            break;
            
        case 6:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerStifleChart"];
            break;
            
        case 7:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerShoulderPoints"];
            break;
            
        case 8:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerHyoidTMJChart"];
            break;
            
        default:
            cell = [tableView dequeueReusableCellWithIdentifier:@"chartTableViewControllerIntroductoryPoints"];
            break;
    }
    
    return cell;
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            _chartType = kEAChartTableCellIntroductoryPoints;
            break;
            
        case 1:
            _chartType = kEAChartTableCellWellnessPoints;
            break;
            
        case 2:
            _chartType = kEAChartTableCellColicPoints;
            break;
            
        case 3:
            _chartType = kEAChartTableCellEmergencyPoints;
            break;
            
        case 4:
            _chartType = kEAChartTableCellLowBackPoints;
            break;
            
        case 5:
            _chartType = kEAChartTableCellLaminitisPoints;
            break;
            
        case 6:
            _chartType = kEAChartTableCellStifleChart;
            break;
            
        case 7:
            _chartType = kEAChartTableCellShoulderPoints;
            break;
            
        case 8:
            _chartType = kEAChartTableCellHyoidTmjChart;
            break;
            
        default:
            _chartType = kEAChartTableCellNone;
            break;
    }
    
    [self performSegueWithIdentifier:@"ChartsWebViewViewController_iPhone" sender:nil];
}

@end
