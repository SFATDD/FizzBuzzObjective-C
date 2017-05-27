//
//  FizzBuzzSpec.m
//  FizzBuzz
//
//  Created by it on 17/5/27.
//  Copyright 2017年 JK. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "FizzBuzz.h"


SPEC_BEGIN(FizzBuzzSpec)

describe(@"FizzBuzz", ^{
    context(@"when newly created", ^{
        it(@"not nil", ^{
            id fizzBuzz = [FizzBuzz new];
            [[fizzBuzz shouldNot] beNil];
        });
    });
    
    context(@"when given a normal number", ^{
        pending(@"should return a string", ^{
            id fizzBuzz = [FizzBuzz new];
            [[[[fizzBuzz shout:1] class] should] equal:[NSString class]];
        });
        
        it(@"1 should return '1'", ^{
           id fizzBuzz = [FizzBuzz new];
           [[[fizzBuzz shout:1] should] equal:@"1"];
           });
    });
});

SPEC_END
