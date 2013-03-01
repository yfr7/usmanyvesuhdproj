//
//  SecondViewController.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 1/29/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        locationManager = [[CLLocationManager alloc]init];
        [locationManager setDelegate:self];
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    EffectsFile *effects = [[EffectsFile alloc] init];
    self.view.backgroundColor = [UIColor colorWithRed:0.902 green:0.902 blue:0.863 alpha:1];
    [effects addShadowtoToolbar:self.second_view_toolbar];
    
    
    [worldView setShowsUserLocation:YES];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@", locations);
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"could not find location: %@", error);
}

@end
