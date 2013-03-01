//
//  EffectsFile.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 2/2/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "EffectsFile.h"

@interface EffectsFile ()

@end

@implementation EffectsFile

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) addShadowtoLabel:(UILabel *)someLabel
{
    someLabel.layer.shadowOffset = CGSizeMake(0.0f,0.0f);
 	someLabel.layer.shadowRadius = 5.5f;
    someLabel.layer.shadowColor = [UIColor redColor].CGColor;
    someLabel.layer.shadowOpacity = 1.0f;
    //someLabel.clipsToBounds = NO;
}

- (void) addShadowtoToolbar:(UIToolbar *)someToolbar
{
    someToolbar.layer.shadowOffset = CGSizeMake(0.0f,1.0f);
 	someToolbar.layer.shadowRadius = 0.5f;
    someToolbar.layer.shadowColor = [UIColor blackColor].CGColor;
    someToolbar.layer.shadowOpacity = 1.0f;
    someToolbar.clipsToBounds = NO;
}




@end
