//
//  EAHomePageWebViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 23.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EAHomePageWebViewController.h"

static NSString * HOME_PAGE_URL = @"http://photonichealth.com";

@interface EAHomePageWebViewController ()

@end

@implementation EAHomePageWebViewController

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
	
    [SVProgressHUD showWithStatus:@"Loading..." maskType:SVProgressHUDMaskTypeGradient];
    
    _webView.delegate = self;
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:HOME_PAGE_URL]]];
}


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [SVProgressHUD dismiss];
}

@end
