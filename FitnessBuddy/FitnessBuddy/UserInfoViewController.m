//
//  UserInfoViewController.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 2/2/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "UserInfoViewController.h"

@interface UserInfoViewController ()

@end

@implementation UserInfoViewController

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

    effects = [[EffectsFile alloc]init];
    
    // Force background to tile.
    UIImage *patternImage = [UIImage imageNamed:@"black_background"];
    self.ivUserInfo.backgroundColor = [UIColor colorWithPatternImage:patternImage];
    
    // Add shadow to text
    [effects addShadowtoLabel:self.lblUserInfoTitle];
    [effects addShadowtoLabel:self.lblUserName];
    [effects addShadowtoLabel:self.lblUserAge];
    [effects addShadowtoLabel:self.lblUserWeight];
    [effects addShadowtoLabel:self.lblUserHeightFT];
    [effects addShadowtoLabel:self.lblUserHeightIN];
    
    
    // Add border and background to inner imageview
    UIImage *patternforInnerImage = [UIImage imageNamed:@"blue_stripes"];
    self.ivUserInfoInner.backgroundColor = [UIColor colorWithPatternImage:patternforInnerImage];
    self.ivUserInfoInner.layer.borderWidth = 1.0f;
    self.ivUserInfoInner.layer.cornerRadius = 10.0f;
    self.ivUserInfoInner.layer.masksToBounds = YES;
    self.ivUserInfoInner.layer.borderColor = [UIColor redColor].CGColor;
    self.ivUserInfoInner.layer.shadowOffset = CGSizeMake(0.0f,0.0f);
    self.ivUserInfoInner.layer.shadowRadius = 3.5f;
    self.ivUserInfoInner.layer.shadowColor = [UIColor whiteColor].CGColor;
    self.ivUserInfoInner.layer.shadowOpacity = 1.0f;
    self.ivUserInfoInner.clipsToBounds = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
