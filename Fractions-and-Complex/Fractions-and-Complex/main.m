//
//  main.m
//  FractionTest
//
//  Created by Not Sure on 5/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

// test change

/*
 #import "Fraction.h"
 int main (int argc, char * argv[]) {
 @autoreleasepool {
 Fraction *myFraction = [[Fraction alloc] init];
 
 // set fraction to 1/3
 
 [myFraction setNumerator: 1]; [myFraction setDenominator: 3];
 
 // display the fraction
 
 NSLog (@"The value of myFraction is:");
 [myFraction print]; 
 }
 return 0; 
 }
 
 
 #import "Fraction.h"
 
 int main (int argc, char * argv[]) {
 
 @autoreleasepool {
 Fraction *aFraction = [[Fraction alloc] init];
 
 [aFraction setTo: 100 over: 200]; 
 [aFraction print];
 
 [aFraction setTo: 1 over: 3];
 [aFraction print]; 
 }
 return 0; 
 }
 */

#import "Fraction.h"
#import "Complex.h"
#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"



int main (int argc, char * argv[]) {
	
	@autoreleasepool {
		
		typedef Fraction *FractionObj;
		
		NSLog (@"Fractions allocated: %i", [Fraction count]);
			   
		FractionObj f1 = [[Fraction allocF] init],
					f2 = [[Fraction allocF] init];
		
		Fraction *aFraction = [[Fraction allocF] init]; 
		Fraction *bFraction = [[Fraction allocF] init];
		
		Fraction *cFraction;
		
		NSLog (@"Fractions allocated: %i", [Fraction count]);
		// Set two fractions to 1/4 and 1/2 and add them together
		
		[aFraction setTo: -5 over: 2]; 
		[bFraction setTo: 2 over: 7];
		
		// Print the results
		
		[aFraction print: NO]; 
		NSLog (@"+"); 
		[bFraction print: NO]; 
		NSLog (@"=");
		
		cFraction = [aFraction add: bFraction];
		[cFraction print: NO]; 
		
		NSLog (@"Fractions allocated: %i", [Fraction count]);
		
		cFraction = [aFraction subtract: bFraction];
		[cFraction print: NO];
		
		cFraction = [aFraction multiply: bFraction];
		[cFraction print: NO];
		
		cFraction = [aFraction divide: bFraction];
		[cFraction print: NO];
		
		cFraction = [aFraction add: bFraction];
		[cFraction print: NO];
		
		NSLog (@"\ngAddCount: %i", [Fraction addCount]);
		
		[aFraction print: YES]; 
		NSLog (@"  reduced!"); 
		[bFraction print: YES]; 
		NSLog (@" reduced!");
		
		Complex *aComplex = [[Complex alloc] init];
		
		[aComplex setReal: 7.5 andImaginary: -2.5];
		//		[[aComplex reduce];		// bad
		[aComplex print];
		
		id data1;
		data1 = aComplex; 
		[data1 print];
		id data2;
		data2 = bFraction;
		[data2 print: NO];
		//		id result;
		//		result = [data1 add: data2];	// bad
		//		[result print];
		
		//  Inversion
		[cFraction setTo: -16 over: 18];
		[cFraction print: 1];
		cFraction = [cFraction invert];
		[cFraction print: 1];
	
		// isEqualTo
		NSLog(@"\n-------ISEqualTo-----------");
		NSLog(@"c to c:  %i", [cFraction isEqualTo: cFraction]);
		NSLog(@"c to a:  %i", [cFraction isEqualTo: aFraction]);
		[cFraction setTo: 1 over: 0];
		NSLog(@"c: %f", [cFraction convertToNum]);
		NSLog(@"c as 1/0 to a:  %i", [cFraction isEqualTo: aFraction]);
		NSLog(@"a to c as 1/0:  %i", [aFraction isEqualTo: cFraction]);
		
		// compare
		NSLog(@"\n-------identify-----------");
		NSLog(@"a is %g", [aFraction convertToNum]);
		[aFraction print:NO];
		NSLog(@"b is %g", [bFraction convertToNum]);
		[bFraction print:NO];
		NSLog(@"c is %g", [cFraction convertToNum]);
		[cFraction print:NO];
		NSLog(@"\n\\\\\\-------compare-----------");
		NSLog(@"\na is %@ b",[aFraction compareStr: [aFraction compare:bFraction]]);
		NSLog(@"\nb is %@ a",[aFraction compareStr: [bFraction compare:aFraction]]);
		NSLog(@"\na is %@ c",[aFraction compareStr: [aFraction compare:cFraction]]);
		NSLog(@"\nc is %@ a",[aFraction compareStr: [cFraction compare:aFraction]]);
		NSLog(@"\na is %@ a",[aFraction compareStr: [aFraction compare:aFraction]]);
	}
	return 0; 
}