//
//  RunsDataHelper.h
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/11/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Runs;
@class Run;

@interface RunsDataHelper : NSObject
{
    NSMutableArray *allRuns;
    
    // holds latitude and logitude for a specific run,
    // uniquely identify a run by providing a predicate
    // with the date and start_time, which can be obtained
    // from allRuns
    NSMutableArray *runData;
    
    NSManagedObjectContext *context;
    NSManagedObjectModel *model;
    
}

+ (RunsDataHelper *)helper;
- (NSArray *)allRuns;
- (NSArray *)runData;

- (Runs *)createRun;
- (Run *) createRunData;

- (NSString *)itemArchivePath;
- (BOOL)saveChanges;

- (void)loadAllRuns;



@end
