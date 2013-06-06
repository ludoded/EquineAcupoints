//
//  EAMeridiansTableViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EAMeridiansTableViewController.h"

const int MERIDIANS_TABLEVIEW_NUMBER_OF_ROWS = 14;

@interface EAMeridiansTableViewController ()

@end

@implementation EAMeridiansTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return MERIDIANS_TABLEVIEW_NUMBER_OF_ROWS;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell;
    switch (indexPath.row) {
        case 0:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerGoverningVessel"];
            break;
            
        case 1:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerConceptionVessel"];
            break;
            
        case 2:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerBladderMeridian"];
            break;
            
        case 3:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerLungMeridian"];
            break;
            
        case 4:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerLargeIntestineMeridian"];
            break;
            
        case 5:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerStomachMeridian"];
            break;
            
        case 6:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerSpleenMeridian"];
            break;
            
        case 7:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerHeartMeridian"];
            break;
            
        case 8:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerSmallIntestineMeridian"];
            break;
            
        case 9:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerPericardiumMeridian"];
            break;
            
        case 10:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerTripleHeaterMeridian"];
            break;
            
        case 11:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerGallBladderMeridian"];
            break;
            
        case 12:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerLiverMeridian"];
            break;
            
        case 13:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerKidneyMeridian"];
            break;
            
        default:
            cell = [tableView dequeueReusableCellWithIdentifier:@"meridianTableViewControllerKidneyMeridian"];
            break;
    }
    
    return cell;

}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            _meridianType = kEAMeridianTableCellGoverningVesssel;
            break;
            
        case 1:
            _meridianType = kEAMeridianTableCellConceptionVessel;
            break;
            
        case 2:
            _meridianType = kEAMeridianTableCellBladderMeridian;
            break;
            
        case 3:
            _meridianType = kEAMeridianTableCellLungMeridian;
            break;
            
        case 4:
            _meridianType = kEAMeridianTableCellLargeIntestineMeridian;
            break;
            
        case 5:
            _meridianType = kEAMeridianTableCellStomachMeridian;
            break;
            
        case 6:
            _meridianType = kEAMeridianTableCellSpleenMeridian;
            break;
            
        case 7:
            _meridianType = kEAMeridianTableCellHeartMeridian;
            break;
            
        case 8:
            _meridianType = kEAMeridianTableCellSmallIntestineMeridian;
            break;
            
        case 9:
            _meridianType = kEAMeridianTableCellPericardiumMeridian;
            break;
            
        case 10:
            _meridianType = kEAMeridianTableCellTripleHeaterMeridian;
            break;
            
        case 11:
            _meridianType = kEAMeridianTableCellGallBladderMeridian;
            break;
            
        case 12:
            _meridianType = kEAMeridianTableCellLiverMeridian;
            break;
            
        case 13:
            _meridianType = kEAMeridianTableCellKidneyMeridian;
            break;
            
        default:
            _meridianType = kEAMeridianTableCellNone;
            break;
    }
    
    [self performSegueWithIdentifier:@"MeridiansWebViewViewController_iPhone" sender:nil];
}

@end
