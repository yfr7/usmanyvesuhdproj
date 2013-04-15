//
//  CalculationViewController.m
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/9/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import "CalculationViewController.h"
#import "RunsDataHelper.h"

@interface CalculationViewController ()

@end

@implementation CalculationViewController

@synthesize  lblCaloriesBurned, lblDistance, lblPaceAverage, lblPaceCurrent,
lblSpeedAverage, lblSpeedCurrent, lblTime, btnStopRunning;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.902 green:0.902 blue:0.863 alpha:1];
    helper = [RunsDataHelper helper];

//    if([helper runInProgres] == YES)
//    {
//            someQueue = dispatch_queue_create("com.usman.queueInCalculationView", NULL);
//            dispatch_async(someQueue, ^{
//                while ([helper runInProgres])
//                {
//                    [NSThread sleepForTimeInterval:1.2];
//                    [helper updateTimer];
//                    
//                    NSLog(@"I am inside the while loop");
//                    dispatch_async(dispatch_get_main_queue(), ^{
//                        NSLog(@"I am inside the main queue loop");
//                        [self updateLabels];
//                    });
//                }
//                
//                
//            });
//        
//    }

}
-(void)viewWillAppear:(BOOL)animated
{
    updateLabelTimer =[NSTimer scheduledTimerWithTimeInterval:1
                                                       target:self
                                                     selector:@selector(updateLabels:)
                                                     userInfo:nil
                                                      repeats:YES];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [updateLabelTimer invalidate];
}

-(void)updateLabels:(NSTimer *)t
{
    [lblTime setText:[NSString stringWithFormat:@"0:%i",     [helper secondsSinceUserStartedRun]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stopRunning:(id)sender {
    
    helper = [RunsDataHelper helper];
    [helper setRunInProgres:NO];
    
}





@end
