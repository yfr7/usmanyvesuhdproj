//
//  GradientButton.h
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/12/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface GradientButton : UIButton
{
    CAGradientLayer *shineLayer;
    CALayer *highlightLayer;
}

@end
