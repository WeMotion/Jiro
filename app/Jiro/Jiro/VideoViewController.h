//
//  VideoViewController.h
//  Jiro
//
//  Created by James Harnett on 2/22/14.
//  Copyright (c) 2014 James Harnett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2/highgui/cap_ios.h>

@interface VideoViewController : UIViewController

{
    IBOutlet UIButton *start;
    IBOutlet UIImageView *imageView;
}

- (IBAction)startButton;

@end
