//
//  CalculationViewController.h
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/9/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RunsDataHelper;

@interface CalculationViewController : UIViewController
{
    RunsDataHelper *helper;
    
    dispatch_queue_t someQueue;
    NSTimer *updateLabelTimer;

}

@property (nonatomic, strong) IBOutlet UILabel *lblPaceAverage;
@property (nonatomic, strong) IBOutlet UILabel *lblPaceCurrent;

@property (nonatomic, strong) IBOutlet UILabel *lblSpeedAverage;
@property (nonatomic, strong) IBOutlet UILabel *lblSpeedCurrent;

@property (nonatomic, strong) IBOutlet UILabel *lblTime;

@property (nonatomic, strong) IBOutlet UILabel *lblDistance;

@property (nonatomic, strong) IBOutlet UILabel *lblCaloriesBurned;

// Button properties
@property (weak, nonatomic) IBOutlet UIButton *btnStopRunning;


- (IBAction)stopRunning:(id)sender;
-(void)updateLabels:(NSTimer*)t;

@end
