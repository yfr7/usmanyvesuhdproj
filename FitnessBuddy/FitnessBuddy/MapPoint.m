//
//  MapPoint.m
//  Whereami
//
//  Created by YVES FERNANDES on 1/31/13.
//  Copyright (c) 2013 KARTECH. All rights reserved.
//

#import "MapPoint.h"

@implementation MapPoint

@synthesize coordinate,title;

-(id)initWithCoordinate:(CLLocationCoordinate2D)c tittle:(NSString *)t
{
    self = [super init];
    
    if (self) {
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

-(id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) tittle:@"Hometown"];
}

@end
