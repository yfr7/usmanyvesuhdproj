//
//  UserInfoViewController.h
//  FitnessBuddy
//
//  Created by Usman Tamanna on 2/2/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CALayer.h>
#import "EffectsFile.h"

@interface UserInfoViewController : UIViewController
{
    EffectsFile *effects;
}


@property (weak, nonatomic) IBOutlet UIImageView *ivUserInfo;
@property (weak, nonatomic) IBOutlet UILabel *lblUserInfoTitle;
@property (weak, nonatomic) IBOutlet UIImageView *ivUserInfoInner;
@property (weak, nonatomic) IBOutlet UILabel *lblUserHeightIN;
@property (weak, nonatomic) IBOutlet UILabel *lblUserHeightFT;
@property (weak, nonatomic) IBOutlet UILabel *lblUserWeight;
@property (weak, nonatomic) IBOutlet UILabel *lblUserAge;
@property (weak, nonatomic) IBOutlet UILabel *lblUserName;

@end
