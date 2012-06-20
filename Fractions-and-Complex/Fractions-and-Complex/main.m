//
//  main.m
//  FractionTest
//
//  Created by Not Sure on 5/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"
#import "Complex.h"
#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"


/*
Fraction *addFractions (Fraction **f, int c);  

int main (int argc, const char * argv[])  
{  
    @autoreleasepool {  
        int c;  
        srand ( (unsigned int)time(NULL) ); //rand() seed  
		
        NSLog(@"How many fractions should be created to add-up?");  
        scanf("%i", &c);  
		
        Fraction *__autoreleasing aF[c]; //__autoreleasing necessary for ARC release  
        for (int i = 0; i < c ; ++i) {  
            aF[i] = [[Fraction alloc] init];  
            // set random fraction  
            [aF[i] setTo: rand() % 10 over: rand() % 10];   
			
            do {  
                if (aF[i].numerator == 0) {  
                    aF[i].numerator = rand() % 10;  
                }  
            } while (aF[i].numerator == 0);  
			
            do {  
                if (aF[i].denominator == 0) {  
                    aF[i].denominator = rand() % 10;  
                }  
            } while (aF[i].denominator == 0);  
			
            if (aF[i].numerator > aF[i].denominator) {  
                int temp = aF[i].numerator;  
                aF[i].numerator = aF[i].denominator;  
                aF[i].denominator = temp;  
            }  
			
            [aF[i] print:NO];  
        }  
		
        Fraction *__autoreleasing result = [[Fraction alloc] init];  
        result = addFractions(aF, c);  
		
        NSLog(@"results added:");  
        [result print:NO];  
    }  
    return 0;  
}  

Fraction *addFractions (Fraction **f, int c)  
{  
    Fraction *result = [[Fraction alloc] init];  
    result = f[0];  
    for (int i = 1; i < c; ++i) {  
        result = [result add: f[i]];  
    }  
    return result;  
}  
*/

Fraction *AddFracts (Fraction **fvalues, int nElements);

int main (int argc, const char * argv[]) {
	
	@autoreleasepool {

		//  Ch 13 E.4  --  
		//  Write a function to add all the Fractions passed to it
		//  in an array and to return the result as a Fraction.
			   
		/*		Fraction *__autoreleasing f0 = [[Fraction alloc] init];
		Fraction *__autoreleasing f1 = [[Fraction alloc] init];
		Fraction *__autoreleasing f2 = [[Fraction alloc] init];
		*/
		 Fraction *__autoreleasing f3 = [[Fraction alloc] init];
		/*
		[f0 setTo: 5 over: 9];
		[f1 setTo: 4 over: 8];
		[f2 setTo: 3 over: 7];
		[f3 setTo: 2 over: 6];
*/
		Fraction *__autoreleasing aF[3];
		aF[0] = [[Fraction alloc] init];
		[aF[0] setTo: 5 over: 9];
		//		aF[0].numerator = f0.numerator;
		//		aF[0].denominator = f0.denominator;
		aF[1] = [[Fraction alloc] init];
		[aF[1] setTo: 4 over: 8];
		//		aF[1].numerator = f1.numerator;
		//		aF[1].denominator = f1.denominator;
		aF[2] = [[Fraction alloc] init];
		[aF[2] setTo: 3 over: 7];
		//		aF[2].numerator = f2.numerator;
		//		aF[2].denominator = f2.denominator;
		
		//[aF[0] print:NO];
		int i=0;
		for (i=0; i<3; i++) {
			[aF[i] print: NO];
		}
		
		NSLog(@"f3 is set to:");
		[f3 print:NO];
		
		f3 = AddFracts(aF,3);
		
		NSLog(@"adding these 3 fractions:");
		[aF[0] print:NO];
		[aF[1] print:NO];
		[aF[2] print:NO];
		NSLog(@"\n equals:");
		[f3 print:NO];
	}
	return 0; 
}

Fraction *AddFracts (Fraction **fvalues, int nElements)
{
	Fraction *sum = [[Fraction allocF] init];
	sum = fvalues[0];
	for (int i=1; i < nElements; i++)
		sum = [sum add: fvalues[i]];
	[sum reduce];
	return sum;
}
