//
//  Fraction+MathOps.m
//  Fractions-and-Complex
//
//  Created by Not Sure on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)
static int gAddCounter;

// Add a fraction to the receiver
-(Fraction *) add: (Fraction *) f
{
	// To add two fractions:
	// a/b + c/d = ((a*d) + (b*c)) / (b * d)
	// result will store the result of the addition 
	// gAddCount counts number of adds
	
	extern int gAddCounter; 
	
	Fraction *result = [[Fraction alloc] init];
	
	result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
	result.denominator = self.denominator * f.denominator;
	
	++gAddCounter;
	
	//[result reduce];
	return result;
}

// Returns the number of Adds
+(int) addCount
{
	extern int gAddCounter;
	return gAddCounter;
}

// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f
{
	// To subtract a fraction:
	// a/b - c/d = ((a*d) - (b*c)) / (b * d)
	Fraction *result = [[Fraction alloc] init];
	
	result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
	result.denominator = self.denominator * f.denominator;
	
	//[result reduce];
	return result;
}

// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f
{
	// a/b * c/d = (a * c) / (b * d)
	Fraction *result = [[Fraction alloc] init];
	
	result.numerator = self.numerator * f.numerator;
	result.denominator = self.denominator * f.denominator;
	
	//[result reduce];
	return result;	
}

// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f 
{
	// a/b / c/d = a/b * d/c = (a * d) / (b * c)
	Fraction *result = [[Fraction alloc] init];
	
	result.numerator = self.numerator * f.denominator;
	result.denominator = self.denominator * f.numerator;
	
	//[result reduce];
	return result;	
}

-(Fraction *) invert
{
	Fraction *result = [[Fraction alloc] init];
	result.numerator = self.denominator;
	result.denominator = self.numerator;
	
	return result;
}
@end
