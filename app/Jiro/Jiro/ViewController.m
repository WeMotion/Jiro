//
//  ViewController.m
//  Jiro
//
//  Created by James Harnett on 2/22/14.
//  Copyright (c) 2014 James Harnett. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    int pin1 = arc4random() % 10;
    int pin2 = arc4random() % 10;
    int pin3 = arc4random() % 10;
    int pin4 = arc4random() % 10;
    
    NSString *pin = [NSString stringWithFormat:@"%d%d%d%d", pin1 , pin2, pin3, pin4];
    passwordLabel.text = [NSString stringWithFormat:@"%@", pin];
    
    NSString *deviceName = [[UIDevice currentDevice] name];
    NSString *modelName = [[UIDevice currentDevice] model];
    
    NSLog(@"name: %@", deviceName);
    NSLog(@"model: %@", modelName);
    
    // send JSON package w/ deviceName && modelName && pin
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{@"name": deviceName, @"model": modelName, @"pin": pin};
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"content-type" forHTTPHeaderField:@"application/json"];
    [manager POST:@"http://meetjiro.appspot.com/api/login/mobile" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject)
     
    {
        NSLog(@"JSON: %@", responseObject);
    }
     
    failure:^(AFHTTPRequestOperation *operation, NSError *error)
     
    {
        NSLog(@"Error: %@", error);
    }];
}

- (IBAction)startButton
{
    // no code required..
    // sending the user to the CalibrationViewController view
}

@end
