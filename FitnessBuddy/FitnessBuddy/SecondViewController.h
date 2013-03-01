//
//  SecondViewController.h
//  FitnessBuddy
//
//  Created by Usman Tamanna on 1/29/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "EffectsFile.h"

@interface SecondViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
}
@property (weak, nonatomic) IBOutlet UIToolbar *second_view_toolbar;
@end
