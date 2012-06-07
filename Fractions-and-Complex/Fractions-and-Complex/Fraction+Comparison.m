//
//  Fraction+Comparison.m
//  Fractions-and-Complex
//
//  Created by Not Sure on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)
-(BOOL) isEqualTo: (Fraction *) f
{
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [f convertToNum];
	if (selfnum == NAN) return NO;
	else if (fnum == NAN) return NO;
	else if (selfnum == fnum)
		return YES;
	else return NO;
}

-(int) compare: (Fraction *) f
{
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [f convertToNum];
	if (selfnum == NAN) return NAN;
	else if (fnum == NAN) return NAN;
	else if (selfnum < fnum) return -1;
	else if (selfnum > fnum) return 1;
	else								// selfnum == fnum
		return 0;
}

-(NSString *) compareStr: (int) a
{	 
	if (a == NAN) return @"NOT COMPARABLE to";
	if (a == -1) return @"less than";
	else if (a == 1) return @"greater than";
	else if (a == 0) return @"equal to";
	else return @"NOT COMPARABLE to";
}

@end