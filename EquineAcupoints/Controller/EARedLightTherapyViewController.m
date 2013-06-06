//
//  EARedLightTherapyViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EARedLightTherapyViewController.h"

@interface EARedLightTherapyViewController ()

@end

@implementation EARedLightTherapyViewController

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
	
//    [SVProgressHUD showWithStatus:@"Loading..." maskType:SVProgressHUDMaskTypeGradient];
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"red_light_therapy" ofType:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    _webView.delegate = self;
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    [_webView loadHTMLString:htmlString baseURL:baseURL];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
//    [SVProgressHUD dismiss];
}

@end
