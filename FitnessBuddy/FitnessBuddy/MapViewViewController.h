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

@class RunsDataHelper;

@interface MapViewViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    
    RunsDataHelper *helper;
    
    
}
@property (strong, nonatomic) IBOutlet UIView *calculationView;

- (IBAction)startRunning:(id)sender;

@end
