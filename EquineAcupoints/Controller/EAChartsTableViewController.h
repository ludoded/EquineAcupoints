//
//  EAChartsTableViewController.h
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum EAChartsTableCells {
    kEAChartTableCellNone = 0,
    kEAChartTableCellIntroductoryPoints,
    kEAChartTableCellWellnessPoints,
    kEAChartTableCellColicPoints,
    kEAChartTableCellEmergencyPoints,
    kEAChartTableCellLowBackPoints,
    kEAChartTableCellLaminitisPoints,
    kEAChartTableCellStifleChart,
    kEAChartTableCellShoulderPoints,
    kEAChartTableCellHyoidTmjChart
} EAChartsTableCellTypes;

@interface EAChartsTableViewController : UITableViewController

@property (nonatomic) EAChartsTableCellTypes chartType;

@end
