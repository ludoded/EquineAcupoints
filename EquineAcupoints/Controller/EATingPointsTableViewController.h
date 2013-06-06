//
//  EATingPointsTableViewController.h
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum EATingTableCells {
    kEATingTableCellNone = 0,
    kEATingTableCellIntro,
    kEATingTableCellFrontFeet,
    kEATingTableCellFrontFeetCaudal,
    kEATingTableCellBackFeet,
    kEATingTableCellBackFeetCaudal
} EATingTableCellTypes;

@interface EATingPointsTableViewController : UITableViewController

@property (nonatomic) EATingTableCellTypes tingType;

@end
