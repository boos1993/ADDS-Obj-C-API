//
//  Airport.h
//  Safe Flight
//
//  Created by Andrew Boos on 8/27/12.
//  Copyright (c) 2012 Andrew Boos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Airport : NSObject {
    
}

- (id)initWithDictionary:(NSDictionary *)dictionary;

//The 4-letter station specifier
@property (nonatomic, retain) NSString *station_id;

//Four-letter WMO Id for the station
@property (nonatomic, retain) NSString *wmo_id;

//The latitude in decimal degrees
@property (nonatomic) float latitude;

//The longitude in decimal degrees
@property (nonatomic) float longitude;

//The elevation of the station (above mean sea-level)
@property (nonatomic) float elevation_m;

//The "common" name/human-readable name of the station
@property (nonatomic, retain) NSString *site;

//The two-letter abbreviation for the U.S. state or Canadian province
@property (nonatomic, retain) NSString *state;

//The two-letter country abbreviation
@property (nonatomic, retain) NSString *country;

//The station type, which can be a combination of the following:
//METAR | rawinsonde | TAF | NEXRAD | wind_profiler | WFO_office | SYNOPS
@property (nonatomic, retain) NSString *site_type;


@end
