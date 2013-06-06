//
//  EAChartsWebViewViewController.h
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVProgressHUD.h"

@interface EAChartsWebViewViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, weak) IBOutlet UIWebView * webView;
@property (nonatomic, copy) NSString * htmlName;
@property (nonatomic, copy) NSString * titleName;

@end
