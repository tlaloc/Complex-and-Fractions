//
//  NSObject+NSComparisonMethods.m
//  Fractions-and-Complex
//
//  Created by Not Sure on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
//  This is an "Informal Protocol".
//

#import "NSObject+NSComparisonMethods.h"

@implementation Fraction (NSComparisonMethods)

- (BOOL)isEqualTo:(id)object
{
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [object convertToNum];
	if (selfnum == NAN) return NO;
	else if (fnum == NAN) return NO;
	else if (selfnum == fnum)
		return YES;
	else return NO;	
}

- (BOOL)isLessThanOrEqualTo:(id)object
{
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [object convertToNum];
	if (isnan(selfnum) || isnan(fnum)) return NO;
	else if (selfnum <= fnum) return YES;
	else 
		return NO;
}

 - (BOOL)isLessThan:(id)object
{
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [object convertToNum];
	if (isnan(selfnum) || isnan(fnum)) return NO;
	else if (selfnum < fnum) return YES;
	else 
		return NO;
}

- (BOOL)isGreaterThanOrEqualTo:(id)object
{
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [object convertToNum];
	if (isnan(selfnum) || isnan(fnum)) return NO;
	else if (selfnum >= fnum) return YES;
	else 
		return NO;
}

- (BOOL)isGreaterThan:(id)object
{
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [object convertToNum];
	if (isnan(selfnum) || isnan(fnum)) return NO;
	else if (selfnum > fnum) return YES;
	else 
		return NO;
}

- (BOOL)isNotEqualTo:(id)object
{
	double selfnum, fnum;
	selfnum = [self convertToNum];
	fnum = [object convertToNum];
	if (isnan(selfnum) || isnan(fnum)) return NO;
	else if (selfnum != fnum) return YES;
	else 
		return NO;
}
@end
