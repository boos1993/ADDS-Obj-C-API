//
//  BPFetchStation.h
//  Safe Flight
//
//  Created by Andrew Boos on 8/27/12.
//  Copyright (c) 2012 Andrew Boos.
//  See the file license.txt for copying permission.
//

#import <Foundation/Foundation.h>
#import "XMLReader.h"
@interface BPFetchStation : NSObject {
    
}

+(NSArray*)stationsForICAO:(NSString*)station;
+(NSArray*)stationForICAO:(NSString*)station forFields:(NSString *)fields;

+(NSArray*)stationsForICAOs:(NSArray*)stations;
+(NSArray*)stationsForICAOs:(NSArray*)stations forFields:(NSString *)fields;

+(NSArray*)stationsForState:(NSString*)state;
+(NSArray*)stationsForState:(NSString*)state forFields:(NSString *)fields;

+(NSArray*)stationsForCountry:(NSString*)country;
+(NSArray*)stationsForCountry:(NSString*)country forFields:(NSString *)fields;

+(NSArray*)stationsForMinLat:(int)minLat minLong:(int)minLong maxLat:(int)maxLat maxLong:(int)maxLong;
+(NSArray*)stationsForMinLat:(int)minLat minLong:(int)minLong maxLat:(int)maxLat maxLong:(int)maxLong forFields:(NSString *)fields;

+(NSArray*)stationsForRadius:(int)radius withLongitude:(float)longitude Latitude:(float)latitude;
+(NSArray*)stationsForRadius:(int)radius withLongitude:(float)longitude Latitude:(float)latitude forFields:(NSString *)fields;

+(NSArray*)stationsForFlightPathWithICAO:(NSString *)firstICAO secondICAO:(NSString *)secondICAO withMinDegreeDistance:(int)minDegreeDistance forMaxDistance:(float)distance;
+(NSArray*)stationsForFlightPathWithICAO:(NSString *)firstICAO secondICAO:(NSString *)secondICAO withMinDegreeDistance:(int)minDegreeDistance forMaxDistance:(float)distance forFields:(NSString *)fields;

+(NSArray*)stationsForFlightPathWithLatLong:(float)firstLat firstLong:(float)firstLong secondLat:(float)secondLat secondLong:(float)secondLong withMinDegreeDistance:(int)minDegreeDistance forMaxDistance:(float)distance;
+(NSArray*)stationsForFlightPathWithLatLong:(float)firstLat firstLong:(float)firstLong secondLat:(float)secondLat secondLong:(float)secondLong withMinDegreeDistance:(int)minDegreeDistance forMaxDistance:(float)distance forFields:(NSString *)fields;


@end
