//
//  FizzBuzz.m
//  FizzBuzz
//
//  Created by it on 17/5/27.
//  Copyright © 2017年 JK. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz
- (NSString *)shout:(NSInteger)number {
    if (number % 3 == 0) {
        return @"fizz";
    }
    
    return [@(number) stringValue];
}
@end
