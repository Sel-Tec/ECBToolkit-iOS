//
//  ECBWebRequest.m
//  ECBToolkit
//
//  Created by Tony Kieu on 11/2/15.
//  Copyright © 2015 ECOMBID, INC. All rights reserved.
//

#import "ECBWebRequest.h"

@interface ECBWebRequest ()

@property (nonatomic, copy, readwrite) NSString *httpPath;
@property (nonatomic, copy, readwrite) NSString *httpMethod;
@property (nonatomic, copy, readwrite) NSDictionary *parameters;
@property (nonatomic, copy, readwrite) NSString *cacheKey;
@property (nonatomic, copy, readwrite) NSString *sessionToken;
@property (nonatomic, assign, readwrite) NSInteger userId;

@end

@implementation ECBWebRequest

///--------------------------------------
#pragma mark - Init
///--------------------------------------

+ (instancetype)requestObjectWithHTTPPath:(NSString *)path
                               httpMethod:(NSString *)method
                               parameters:(NSDictionary *)parameters
                             sessionToken:(NSString *)sessionToken
                                   userId:(NSInteger)userId
{
    ECBWebRequest *requestObject = [ECBWebRequest new];
    requestObject.httpPath = path;
    requestObject.httpMethod = method;
    requestObject.parameters = parameters;
    requestObject.sessionToken = sessionToken;
    requestObject.userId = userId;
    return requestObject;
}

///--------------------------------------
#pragma mark - CacheKey
///--------------------------------------

- (NSString *)cacheKey
{
    // TODO: (tkieu87) Implement later
    return nil;
}

@end
