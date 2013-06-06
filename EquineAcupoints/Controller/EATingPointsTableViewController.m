//
//  EATingPointsTableViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EATingPointsTableViewController.h"

const int TING_TABLEVIEW_NUMBER_OF_ROWS = 5;

@interface EATingPointsTableViewController ()

@end

@implementation EATingPointsTableViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return TING_TABLEVIEW_NUMBER_OF_ROWS;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TingPointsTableViewController";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Intro to Ting Points";
            break;
            
        case 1:
            cell.textLabel.text = @"Ting Points Front Feet";
            break;
            
        case 2:
            cell.textLabel.text = @"Front Feet Caudal";
            break;
            
        case 3:
            cell.textLabel.text = @"Ting Points Back Feet";
            break;
            
        case 4:
            cell.textLabel.text = @"Back Feet Caudal";
            break;
            
        default:
            cell.textLabel.text = @"Back Feet Caudal";
            break;
    }
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            _tingType = kEATingTableCellIntro;
            break;
            
        case 1:
            _tingType = kEATingTableCellFrontFeet;
            break;
            
        case 2:
            _tingType = kEATingTableCellFrontFeetCaudal;
            break;
            
        case 3:
            _tingType = kEATingTableCellBackFeet;
            break;
            
        case 4:
            _tingType = kEATingTableCellBackFeetCaudal;
            break;
            
        default:
            _tingType = kEATingTableCellNone;
            break;
    }
    [self performSegueWithIdentifier:@"TingWebViewViewController_iPhone" sender:nil];
}

@end
