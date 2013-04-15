//
//  FirstViewController.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 1/29/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "FirstViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "RunsDataHelper.h"
#import "CalculationViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    helper = [[RunsDataHelper helper] init];
    if([helper runInProgres] == YES)
    {
        
        //Add Calculations View Controller
        CalculationViewController *calculationController = [self.storyboard instantiateViewControllerWithIdentifier:@"Calculate"];
        calculationController.view.frame = self.calculationView.bounds;
        [self addChildViewController:calculationController];
        [self.calculationView addSubview:calculationController.view];
        [calculationController didMoveToParentViewController:self];
        
//        dispatch_async([helper updateTime], ^{
//            while([helper runInProgres])
//            {
//                [NSThread sleepForTimeInterval:1];
//                [helper updateTimer];
//                    dispatch_async(dispatch_get_main_queue(), ^{
//                        [[calculationController lblTime] setText:[NSString stringWithFormat:@"0:%i", [helper secondsSinceUserStartedRun]]];
//                });
//            }
//        });
        
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    EffectsFile *effects = [[EffectsFile alloc] init];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.902 green:0.902 blue:0.863 alpha:1];
    
    //Changing the menu bar image
    UIImage *menu_bar_image = [UIImage imageNamed:@"blue_color.png"];
    [[UIToolbar appearance] setBackgroundImage:menu_bar_image forToolbarPosition:UIToolbarPositionBottom barMetrics:UIBarMetricsDefault];
    
    [effects addShadowtoToolbar:self.first_view_nav_bar];
    
//    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
