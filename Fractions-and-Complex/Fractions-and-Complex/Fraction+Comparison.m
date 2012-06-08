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
	if (isnan(selfnum) || isnan(fnum)) return NAN;
	else if (selfnum < fnum) return -1;
	else if (selfnum > fnum) return 1;
	else								// selfnum == fnum
		return 0;
}

-(NSString *) compareSay: (Fraction *) f
{	 
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [f convertToNum];
	if (isnan(selfnum) || isnan(fnum)) return @"NOT COMPARABLE to";
	else if (selfnum < fnum) return @"less than";
	else if (selfnum > fnum) return @"greater than";
	else 
		return @"equal to";
}
@end