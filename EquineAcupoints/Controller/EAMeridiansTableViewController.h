//
//  EAMeridiansTableViewController.h
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum EAMeridiansTableCells {
    kEAMeridianTableCellNone = 0,
    kEAMeridianTableCellGoverningVesssel,
    kEAMeridianTableCellConceptionVessel,
    kEAMeridianTableCellBladderMeridian,
    kEAMeridianTableCellLungMeridian,
    kEAMeridianTableCellLargeIntestineMeridian,
    kEAMeridianTableCellStomachMeridian,
    kEAMeridianTableCellSpleenMeridian,
    kEAMeridianTableCellHeartMeridian,
    kEAMeridianTableCellSmallIntestineMeridian,
    kEAMeridianTableCellPericardiumMeridian,
    kEAMeridianTableCellTripleHeaterMeridian,
    kEAMeridianTableCellGallBladderMeridian,
    kEAMeridianTableCellLiverMeridian,
    kEAMeridianTableCellKidneyMeridian,
} EAMeridiansTableCellTypes;

@interface EAMeridiansTableViewController : UITableViewController

@property (nonatomic) EAMeridiansTableCellTypes meridianType;

@end
