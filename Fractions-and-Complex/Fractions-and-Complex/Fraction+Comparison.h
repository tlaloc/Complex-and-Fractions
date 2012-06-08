//
//  Fraction+Comparison.h
//  Fractions-and-Complex
//
//  Created by Not Sure on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (Comparison)
-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;
-(NSString *) compareSay: (Fraction *) f;
@end
