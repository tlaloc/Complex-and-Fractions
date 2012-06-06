//
//  Fraction+MathOps.h
//  Fractions-and-Complex
//
//  Created by Not Sure on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *)	add: (Fraction *) f;
+(int) addCount;
-(Fraction *)	subtract: (Fraction *) f;
-(Fraction *)	multiply: (Fraction *) f;
-(Fraction *)	divide: (Fraction *) f;

@end
