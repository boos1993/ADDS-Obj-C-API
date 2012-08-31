//
//  BPFetchStation.m
//  Safe Flight
//
//  Created by Andrew Boos on 8/27/12.
//  Copyright (c) 2012 Andrew Boos.
//  See the file license.txt for copying permission.
//

#import "BPFetchStation.h"

@implementation BPFetchStation

+(NSArray*)stationsForICAO:(NSString*)station {
    NSString *stationsParameters = [NSString stringWithFormat:@"&stationString=%@",station];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationForICAO:(NSString*)station forFields:(NSString *)fields {
    NSString *stationsParameters = [NSString stringWithFormat:@"&stationString=%@&fields=%@",station,fields];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}


+(NSArray *)stationsForICAOs:(NSArray*)stations {
    NSString *stationsList = [[stations valueForKey:@"description"] componentsJoinedByString:@","];
    NSString *stationsParameters = [NSString stringWithFormat:@"&stationString=%@",stationsList];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
   
    return stationsArray;
}

+(NSArray *)stationsForICAOs:(NSArray*)stations forFields:(NSString *)fields {
    NSString *stationsList = [[stations valueForKey:@"description"] componentsJoinedByString:@","];
    NSString *stationsParameters = [NSString stringWithFormat:@"&stationString=%@&fields=%@",stationsList,fields];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForState:(NSString*)state {
    NSString *stationsParameters = [NSString stringWithFormat:@"&stationString=@%@",state];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForState:(NSString*)state forFields:(NSString *)fields {
    NSString *stationsParameters = [NSString stringWithFormat:@"&stationString=@%@&fields=%@",state,fields];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForCountry:(NSString*)country {
    NSString *stationsParameters = [NSString stringWithFormat:@"&stationString=~%@",country];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForCountry:(NSString*)country forFields:(NSString *)fields {
    NSString *stationsParameters = [NSString stringWithFormat:@"&stationString=~%@&fields=%@",country,fields];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForMinLat:(int)minLat minLong:(int)minLong maxLat:(int)maxLat maxLong:(int)maxLong {
    NSString *stationsParameters = [NSString stringWithFormat:@"&minLat=%d&minLon=%d&maxLat=%d&maxLon=%d",minLat,minLong,maxLat,maxLong];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForMinLat:(int)minLat minLong:(int)minLong maxLat:(int)maxLat maxLong:(int)maxLong forFields:(NSString *)fields {
    NSString *stationsParameters = [NSString stringWithFormat:@"&minLat=%d&minLon=%d&maxLat=%d&maxLon=%d&fields=%@",minLat,minLong,maxLat,maxLong,fields];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForRadius:(int)radius withLongitude:(float)longitude Latitude:(float)latitude {
    NSString *stationsParameters = [NSString stringWithFormat:@"radialDistance=%d;%f,%f",radius, longitude, latitude];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForRadius:(int)radius withLongitude:(float)longitude Latitude:(float)latitude forFields:(NSString *)fields {
    NSString *stationsParameters = [NSString stringWithFormat:@"radialDistance=%d;%f,%f&fields=%@",radius, longitude, latitude,fields];
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}

+(NSArray*)stationsForFlightPathWithICAO:(NSString *)firstICAO secondICAO:(NSString *)secondICAO withMinDegreeDistance:(int)minDegreeDistance forMaxDistance:(float)distance {
        
        NSString *stationsParameters;
        if (minDegreeDistance == 0) {
            stationsParameters = [NSString stringWithFormat:@"&flightPath=%f;%@;%@",distance,firstICAO,secondICAO];
        } else {
            stationsParameters = [NSString stringWithFormat:@"&flightPath=%f;%@;%@&minDegreeDistance=%d",distance,firstICAO,secondICAO,minDegreeDistance];
            
        }
        NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
        
        return stationsArray;

}

+(NSArray*)stationsForFlightPathWithICAO:(NSString *)firstICAO secondICAO:(NSString *)secondICAO withMinDegreeDistance:(int)minDegreeDistance forMaxDistance:(float)distance forFields:(NSString *)fields {
    
    NSString *stationsParameters;
    if (minDegreeDistance == 0) {
        stationsParameters = [NSString stringWithFormat:@"&flightPath=%f;%@;%@&fields=%@",distance,firstICAO,secondICAO,fields];
    } else {
        stationsParameters = [NSString stringWithFormat:@"&flightPath=%f;%@;%@&minDegreeDistance=%d&fields=%@",distance,firstICAO,secondICAO,minDegreeDistance,fields];
        
    }
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;

}

+(NSArray*)stationsForFlightPathWithLatLong:(float)firstLat firstLong:(float)firstLong secondLat:(float)secondLat secondLong:(float)secondLong withMinDegreeDistance:(int)minDegreeDistance forMaxDistance:(float)distance  {
    
    NSString *stationsParameters;
    if (minDegreeDistance == 0) {
        stationsParameters = [NSString stringWithFormat:@"&flightPath=%f;%f,%f;%f,%f",distance,firstLong,firstLat,secondLong,secondLat];
    } else {
        stationsParameters = [NSString stringWithFormat:@"&flightPath=%f;%f,%f;%f,%f&minDegreeDistance=%d",distance,firstLong,firstLat,secondLong,secondLat,minDegreeDistance];

    }
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];

    return stationsArray;
}

+(NSArray*)stationsForFlightPathWithLatLong:(float)firstLat firstLong:(float)firstLong secondLat:(float)secondLat secondLong:(float)secondLong withMinDegreeDistance:(int)minDegreeDistance forMaxDistance:(float)distance forFields:(NSString *)fields {
    
    NSString *stationsParameters;
    if (minDegreeDistance == 0) {
        stationsParameters = [NSString stringWithFormat:@"&flightPath=%f;%f,%f;%f,%f&fields=%@",distance,firstLong,firstLat,secondLong,secondLat,fields];
    } else {
        stationsParameters = [NSString stringWithFormat:@"&flightPath=%f;%f,%f;%f,%f&minDegreeDistance=%d&fields=%@",distance,firstLong,firstLat,secondLong,secondLat,minDegreeDistance,fields];
        
    }
    NSArray *stationsArray = [self stationsWithParamaters:stationsParameters];
    
    return stationsArray;
}



+(NSArray *)stationsWithParamaters:(NSString*)parameters {
    NSString *baseUrlString = @"http://weather.aero/dataserver_current/httpparam?dataSource=stations&requestType=retrieve&format=xml";
    
    NSString *requestUrlString = [baseUrlString stringByAppendingString:parameters];
    
    NSURL *requestURL = [NSURL URLWithString:requestUrlString];
    NSData *requestData = [NSData dataWithContentsOfURL:requestURL];
    NSDictionary *requestDict = [XMLReader dictionaryForXMLData:requestData];
    id stationData = [requestDict valueForKeyPath:@"response.data.Station"];
    
    NSArray *stationsArray;
    
    if([stationData isKindOfClass:[NSArray class]]){
        stationsArray = stationData;
    }else if([stationData isKindOfClass:[NSDictionary class]]){
        stationsArray = [NSArray arrayWithObject:stationData];
    }else{
        stationsArray = [[NSArray alloc] init];
    }

    return stationsArray;
}

@end
