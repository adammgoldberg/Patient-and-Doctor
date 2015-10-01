//
//  Patient.m
//  Patient and Doctor
//
//  Created by Adam Goldberg on 2015-10-01.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithPatientName:(NSString*)patName patientAge:(int)patAge healthcard:(NSString*)hcard
{
    self = [super init];
    if (self) {
        self.patientName = patName;
        self.patientAge = patAge;
        self.healthCard = hcard;
    }
    return self;
}



-(void)answerDoctor {
    NSLog(@"My name is %@ and my age is %d", self.patientName, self.patientAge);
}


-(void)visitDoctor:(Doctor*)doctor {
    
}

-(void)requestMedication:(Doctor*)doctor {
   
}






//
//Task 3 - Treating a Patient
//A patient can request medication from the doctor. The patient will do this by calling requestMedication on the doctor instance. Only patients previously accepted by that doctor can ask for prescriptions. In order for the doctor to create and return a prescription to the patient, the doctor needs to know what symptoms the patient is currently experiencing. This will affect what is prescribed.
//
//Suggestion: While you could keep things simple and not define any other classes to accomplish this, you may want to consider what other objects are involved in this interaction.



@end
