//
//  MapViewViewController.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/2/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "MapViewViewController.h"

@interface MapViewViewController ()

@end

@implementation MapViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        locationManager = [[CLLocationManager alloc] init];
        [locationManager setDelegate:self];
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        [locationManager startUpdatingLocation];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add Calculations View Controller
    

}

- (void) viewDidAppear:(BOOL)animated
{
    CalculationViewController *calculationController = [self.storyboard instantiateViewControllerWithIdentifier:@"Calculate"];
    [self addChildViewController:calculationController];
    calculationController.view.frame = self.calcualtionView.bounds;
    
    [self.calcualtionView addSubview:calculationController.view];
    [calculationController didMoveToParentViewController:self];
}



-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"New Location Found!");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
