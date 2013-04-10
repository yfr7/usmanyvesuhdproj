//
//  MapViewViewController.h
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/2/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "CalculationViewController.h"

@interface MapViewViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    
}
@property (strong, nonatomic) IBOutlet UIView *calcualtionView;


@end
