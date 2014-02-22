//
//  ViewController.m
//  Jiro
//
//  Created by James Harnett on 2/22/14.
//  Copyright (c) 2014 James Harnett. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [start setEnabled:NO];
}

- (IBAction)startButton
{
    UIAlertView *startAlert = [[UIAlertView alloc]
                               initWithTitle:@"Start"
                               message:@"This button sends the user to the Video view."
                               delegate:nil
                               cancelButtonTitle:nil
                               otherButtonTitles:@"Ok", nil];
    
    [startAlert show];
}

- (IBAction)qrCodeButton
{
    // insert qr code here...
    
    [start setEnabled:YES];
}

@end
