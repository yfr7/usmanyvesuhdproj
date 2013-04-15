//
//  FirstViewController.h
//  FitnessBuddy
//
//  Created by Usman Tamanna on 1/29/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EffectsFile.h"

@class RunsDataHelper;

@interface FirstViewController : UIViewController
{
    RunsDataHelper *helper;
}

@property (weak, nonatomic) IBOutlet UIView *first_view_content_area;
@property (weak, nonatomic) IBOutlet UIToolbar *first_view_nav_bar;

@property (weak, nonatomic) IBOutlet UIView *calculationView;

@end
