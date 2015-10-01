//
//  Doctor.h
//  Patient and Doctor
//
//  Created by Adam Goldberg on 2015-10-01.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"


@interface Doctor : NSObject

@property (nonatomic, strong) NSString *doctorName;

@property (nonatomic, strong) NSString *specialty;

@property (nonatomic, strong) NSMutableSet *acceptedPatients;

- (instancetype)initWithDoctorName:(NSString*)docName speciality:(NSString*)special;

-(void)answerPatient;

-(BOOL)acceptPatient:(Patient*)patient;

-(Prescription*)giveRx:(Patient*)patient forSymptoms:(NSSet*)symptoms;

@end
