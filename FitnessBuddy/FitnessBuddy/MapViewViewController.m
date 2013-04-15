//
//  MapViewViewController.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/2/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "MapViewViewController.h"
#import "RunsDataHelper.h"

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
    self.view.backgroundColor = [UIColor colorWithRed:0.902 green:0.902 blue:0.863 alpha:1];

    

}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    helper = [[RunsDataHelper helper] init];
    if([helper runInProgres] == YES)
    {
        // Add Calculations View Controller
        CalculationViewController *calculationController = [self.storyboard instantiateViewControllerWithIdentifier:@"Calculate"];
        [self addChildViewController:calculationController];
        calculationController.view.frame = self.calculationView.bounds;
        
        [UIView transitionWithView:self.calculationView
                          duration:0.4
                           options:UIViewAnimationOptionTransitionCurlDown
                        animations:^{
                            [self.calculationView addSubview:calculationController.view];
                        }
                        completion:nil];
        [calculationController didMoveToParentViewController:self];
        
        
    }
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

- (IBAction)startRunning:(id)sender {
    NSLog(@"Start button pressed.");
    
    helper = [[RunsDataHelper helper] init];
    
    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(updateTimer:)
                                   userInfo:nil
                                    repeats:YES];
 
    
    // Set this value to true so then other views also display the calculationsView
    [helper setRunInProgres:YES];
    
    // Add Calculations View Controller
    CalculationViewController *calculationController = [self.storyboard instantiateViewControllerWithIdentifier:@"Calculate"];
    [self addChildViewController:calculationController];
    calculationController.view.frame = self.calculationView.bounds;
    
//    [self.calculationView addSubview:calculationController.view];
    [UIView transitionWithView:self.calculationView
                      duration:0.4
                       options:UIViewAnimationOptionTransitionCurlDown
                    animations:^{
                        [self.calculationView addSubview:calculationController.view];
                    }
                    completion:nil];
    [calculationController didMoveToParentViewController:self];
    
}

-(void)updateTimer:(NSTimer*)t
{
    [helper updateTimer];
}
@end
