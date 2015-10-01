//
//  Doctor.m
//  Patient and Doctor
//
//  Created by Adam Goldberg on 2015-10-01.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "Doctor.h"


@implementation Doctor

- (instancetype)initWithDoctorName:(NSString*)docName speciality:(NSString*)special
{
    self = [super init];
    if (self) {
        self.doctorName = docName;
        self.specialty = special;
        self.acceptedPatients = [[NSMutableSet alloc] init];
    }
    return self;
}


-(void)answerPatient {
    NSLog(@"My name is %@ and my speicalization is %@", self.doctorName, self.specialty);
}


-(BOOL)acceptPatient:(Patient*)patient {
    if (patient.healthCard) {
        [self.acceptedPatients addObject:patient];
        return YES;
    }
    return NO;
}

-(Prescription*)giveRx:(Patient *)patient forSymptoms:(NSSet *)symptoms {
    if (![self.acceptedPatients containsObject:patient]) {
        return nil;
    }
    NSMutableArray *drugs = [[NSMutableArray alloc] init];
    if ([symptoms containsObject:@"fever"]) {
        [drugs addObject:@"tylenol"];
    } else if ([symptoms containsObject:@"cough"]) {
        [drugs addObject:@"robitussin"];
    }
    Prescription *scrip = [[Prescription alloc] init];
    [scrip.drugs addObject:drugs];
    
    return scrip;
}






@end



