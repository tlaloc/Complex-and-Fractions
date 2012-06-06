//
// Fraction.m
// FractionTest 
//
// Created by Not Sure on 5/15/12.
// Copyright (c) ClassroomM, Inc. All rights reserved. 
//

#import "Fraction.h"

static int gCounter;

@implementation Fraction 

@synthesize numerator, denominator;

+(Fraction *) allocF 
{
	extern int gCounter;	// "extern" not necessary here
	++gCounter;	
	return [Fraction alloc];
}

+(int) count
{
	extern int gCounter;	// "extern" not necessary here
	return gCounter; 
}

-(void) print: (BOOL) simplify 
{
	int wholeNum = 0;
	
	if (denominator == 0)
		NSLog (@"\nNot a number:  %i/%i", numerator, denominator);
	else {
		if (denominator == 1) 
			NSLog (@"%i", numerator);
		else if (numerator == 0)
			NSLog (@"0");
		else if (numerator == denominator)
			NSLog (@"%i", numerator);
		else if (simplify) {
			Fraction *pFraction = [[Fraction alloc] init];
			[pFraction setTo: numerator over: denominator];
			[pFraction reduce];
			
			// check for mixed fractions
			if (ABS(pFraction.numerator) > pFraction.denominator) {
				wholeNum = pFraction.numerator / pFraction.denominator;
				//NSLog (@"\nwholeNum: %i", wholeNum);
				pFraction.numerator = ABS(pFraction.numerator) % pFraction.denominator;
			}
			// print simplified (and mixed) result 
			if (wholeNum)
				NSLog (@"\n%i %i/%i", wholeNum, pFraction.numerator, pFraction.denominator);
			else
				NSLog (@"%i/%i", pFraction.numerator, pFraction.denominator);
		}
		else NSLog (@"%i/%i", numerator, denominator); 
	}
}

-(double)convertToNum 
{
	if (denominator != 0)
		return (double) numerator / denominator;
	else
		return NAN;
}

-(void) setTo: (int) n over: (int) d
{
	numerator = n;
	denominator = d;
}

// Reduce the fraction to its lowest common denominator
-(void) reduce 
{
	int u, v;
	int temp;
	BOOL isNeg = NO;
	
	// check for negative(s)
	if (numerator < 0) {
		isNeg = YES;
		numerator *= -1;
		//	NSLog (@"\nnum: %i  isNeg: %i", numerator, isNeg);
	}
	if (denominator < 0) {
		denominator *= -1;
		if (isNeg == YES) isNeg = NO;
		else if (isNeg == NO) isNeg = YES;
		//	NSLog (@"\nden: %i  isNeg: %i", denominator, isNeg);
	}
	
	u = numerator; 
	v = denominator; 
	
	//NSLog (@"\nnum: %i  den:  %i   isNeg: %i", numerator, denominator, isNeg);
	//NSLog (@"\nu: %i  v:  %i", u,v);
	
	// algorithm to find greatest common denominator
	while (v != 0) { 
		temp = u % v; u = v;
		v = temp;
	}
	//NSLog (@"\nwhile:  num: %i  den:  %i   isNeg: %i", numerator, denominator, isNeg);
	//NSLog (@"\nu: %i  v:  %i", u,v);
	if (isNeg == YES)
		numerator *= -1;
	numerator /= u;
	denominator /= u; 	
}
@end


















