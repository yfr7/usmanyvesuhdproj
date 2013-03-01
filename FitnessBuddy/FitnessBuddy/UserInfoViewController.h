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



@property (weak, nonatomic) IBOutlet UIToolbar *user_info_toolbar;
@property (weak, nonatomic) IBOutlet UIImageView *ivUserInfo;
@property (weak, nonatomic) IBOutlet UILabel *lblUserInfoTitle;
@property (weak, nonatomic) IBOutlet UIImageView *ivUserInfoInner;



@end
