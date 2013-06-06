//
//  EAContactsViewController.m
//  EquineAcupoints
//
//  Created by Aik Ampardjian on 24.04.13.
//  Copyright (c) 2013 Aik Ampardjian. All rights reserved.
//

#import "EAContactsViewController.h"

@interface EAContactsViewController ()

@end

@implementation EAContactsViewController

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

- (void)sendEmailTo:(NSString *)email
{
    MFMailComposeViewController * mailController = [[MFMailComposeViewController alloc] init];
    [mailController setToRecipients:[NSArray arrayWithObject:email]];
    [mailController setSubject:@"Feedback From iPhone"];
    mailController.mailComposeDelegate = self;
    [self presentViewController:mailController animated:YES completion:nil];
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [controller dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ContactCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    int section = indexPath.section;
    if (section == 0) {
        cell.textLabel.text = @"Phone Number:";
        cell.detailTextLabel.text = @"855-733-4325";
    } else if (section == 1) {
        cell.textLabel.text = @"Email:";
        cell.detailTextLabel.text = @"Info@PhotonicHealth.com";
    }
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    int section = indexPath.section;
    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    if (section == 0) {
        NSString * phone = cell.detailTextLabel.text;
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"telprompt://%@",phone]]];
    } else if (section == 1) {
        NSString * email = cell.detailTextLabel.text;
        [self sendEmailTo:email];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
