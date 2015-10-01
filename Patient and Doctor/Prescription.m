//
//  Prescription.m
//  Patient and Doctor
//
//  Created by Adam Goldberg on 2015-10-01.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "Prescription.h"

@interface Prescription()

@property (readwrite, nonatomic, strong) NSMutableArray *rxHistory;


@end

@implementation Prescription

-(void)addRx:(Prescription*)newRx {
    [self.rxHistory addObject:newRx];
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _drugs = [NSMutableArray array];
    }
    return self;
}

@end
