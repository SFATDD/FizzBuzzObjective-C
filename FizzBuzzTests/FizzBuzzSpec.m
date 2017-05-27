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
    __block id fizzBuzz = nil;
    
    beforeAll(^{
        fizzBuzz = [FizzBuzz new];
    });
    
    afterAll(^{
        fizzBuzz = nil;
    });
    
    context(@"when newly created", ^{
        it(@"not nil", ^{
            [[fizzBuzz shouldNot] beNil];
        });
    });
    
    context(@"when given a normal number", ^{
        it(@"should return a string", ^{
            Boolean isString = [[fizzBuzz shout:1] isKindOfClass:[NSString class]];
            [[theValue(isString) should] beTrue];
        });
        
        it(@"1 should return '1'", ^{
            [[[fizzBuzz shout:1] should] equal:@"1"];
           });
        
        it(@"2 should return '2'", ^{
            [[[fizzBuzz shout:2] should] equal:@"2"];
        });
    });
    
    context(@"when given a fizz number", ^{
        it(@"should return 'fizz'", ^{
            [[[fizzBuzz shout:3] should] equal:@"fizz"];
        });
    });
});

SPEC_END
