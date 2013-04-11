//
//  Run.h
//  FitnessBuddy
//
//  Created by Usman Tamanna on 4/11/13.
//  Copyright (c) 2013 Usman Tamanna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Run : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSDate * start_time;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;

@end
