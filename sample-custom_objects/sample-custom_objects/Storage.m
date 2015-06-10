//
//  Storage.m
//  sample-custom_objects
//
//  Created by Igor Khomenko on 6/10/15.
//  Copyright (c) 2015 Igor Khomenko. All rights reserved.
//

#import "Storage.h"

@implementation Storage

+ (instancetype)instance
{
    static id instance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        instance = [[self class] new];
    });
    
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.moviesList = [NSMutableArray array];
    }
    return self;
}


@end
