//
//  Patient.h
//  Patient and Doctor
//
//  Created by Adam Goldberg on 2015-10-01.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *patientName;

@property (nonatomic, assign) int patientAge;

@property (nonatomic, strong) NSString * healthCard;

- (instancetype)initWithPatientName:(NSString*)patName patientAge:(int)patAge healthcard:(NSString*)hcard;

-(void)answerDoctor;

-(void)visitDoctor:(Doctor*)doctor;

-(void)requestMedication:(Doctor*)doctor;

@end





