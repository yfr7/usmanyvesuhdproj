//
//  FirstViewController.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 1/29/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "FirstViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    EffectsFile *effects = [[EffectsFile alloc] init];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.902 green:0.902 blue:0.863 alpha:1];
    
    //Changing the menu bar image
    UIImage *menu_bar_image = [UIImage imageNamed:@"blue_color.png"];
    [[UIToolbar appearance] setBackgroundImage:menu_bar_image forToolbarPosition:UIToolbarPositionBottom barMetrics:UIBarMetricsDefault];
    
    [effects addShadowtoToolbar:self.first_view_nav_bar];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
