//
//  Airport.m
//  Safe Flight
//
//  Created by Andrew Boos on 8/27/12.
//  Copyright (c) 2012 Andrew Boos. All rights reserved.
//

#import "Airport.h"

@implementation Airport
@synthesize station_id, wmo_id, latitude, longitude, elevation_m, site, state, country, site_type;

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        station_id = [dictionary objectForKey:@"station_id"];
        wmo_id = [dictionary objectForKey:@"wmo_id"];
        latitude = [[dictionary objectForKey:@"latitude"] floatValue];
        longitude = [[dictionary objectForKey:@"longitude"] floatValue];
        elevation_m = [[dictionary objectForKey:@"elevation_m"] floatValue];
        site = [dictionary objectForKey:@"site"];
        state = [dictionary objectForKey:@"state"];
        country = [dictionary objectForKey:@"country"];
        site_type = [dictionary objectForKey:@"site_type"];
    }
    return self;
}
@end
