//
//  UIMainViewController.h
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BButton.h"

@interface UIMainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *logoText;
@property (weak, nonatomic) IBOutlet BButton *bladderButton;
@property (weak, nonatomic) IBOutlet BButton *assessmentsButton;
@property (weak, nonatomic) IBOutlet BButton *chartsButton;
@property (weak, nonatomic) IBOutlet BButton *meridiansButton;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end
