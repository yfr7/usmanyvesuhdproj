//
//  ThirdViewController.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 2/21/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
    
    EffectsFile *effects = [[EffectsFile alloc] init];
    self.view.backgroundColor = [UIColor colorWithRed:0.902 green:0.902 blue:0.863 alpha:1];
    [effects addShadowtoToolbar:self.third_view_toolbar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
