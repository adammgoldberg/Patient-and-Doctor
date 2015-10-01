//
//  Prescription.h
//  Patient and Doctor
//
//  Created by Adam Goldberg on 2015-10-01.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property (nonatomic, strong) NSMutableArray *drugs;

@property (nonatomic, strong) NSSet *symptoms;

@property (readonly, nonatomic, strong) NSMutableArray *rxHistory;

-(void)addRx:(Prescription*)newRx;

// - (instancetype)initWithDrugs:(NSMutableArray*)drugs;

@end
