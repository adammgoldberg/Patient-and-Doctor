//
//  main.m
//  Patient and Doctor
//
//  Created by Adam Goldberg on 2015-10-01.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"


int main(int argc, const char * argv[]) {
 
    
    
    Patient *newPatient = [[Patient alloc] initWithPatientName:@"Bill Jones" patientAge:34 healthcard:@"1234 5678"];
    
    [newPatient answerDoctor];
    
    
    
    Doctor *newDoctor = [[Doctor alloc] initWithDoctorName:@"Dr. Smith" speciality:@"Radiology"];
    
    [newDoctor answerPatient];
    [newDoctor acceptPatient:newPatient];
    NSLog(@"Before the doctor can give a prescription, they need to check if the patient has a health card, what the symptoms are, and update their prescription history");
    
    NSArray *symptomsArray = @[@"cough", @"cold", @"headache"];
    NSSet *symptomsSet = [NSSet setWithArray:symptomsArray];
    
    
    Prescription *p = [newDoctor giveRx:newPatient forSymptoms:symptomsSet];
    
    NSLog(@"Based on your symtoms, you have been prescribed %@", p.drugs );
    
    
   
    
    
    
    
    
    return 0;
}
