//
//  MapPoint.h
//  Whereami
//
//  Created by YVES FERNANDES on 1/31/13.
//  Copyright (c) 2013 KARTECH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MapPoint : NSObject <MKAnnotation>
{
    
}

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;

-(id)initWithCoordinate:(CLLocationCoordinate2D) c tittle:(NSString*)t;
@end
