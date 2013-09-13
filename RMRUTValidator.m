//
//  RMRUTValidator.m
//  Tnek GPS
//
//  Created by Renato on 02-09-13.
//  Copyright (c) 2013 renatomoya. All rights reserved.
//

#import "RMRUTValidator.h"

@implementation RMRUTValidator
+ (BOOL)validateRut:(NSString *)rut
{
    // Get rid of the dots.
    rut = [rut stringByReplacingOccurrencesOfString:@"." withString:@""];
    // Get rid of the hyphen.
    rut = [rut stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    NSString *numbers = [rut substringToIndex:[rut length]-1];
    NSString *digit = [rut substringFromIndex:[rut length]-1];
    NSArray *multipliers = @[ @2, @3, @4, @5, @6, @7, @2, @3 ];

    __block NSInteger numbersSum = 0;
    __block NSInteger index = 0;
    
    NSStringEnumerationOptions enumerationOptions = NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences;
    
    [numbers enumerateSubstringsInRange:NSMakeRange(0, [numbers length]) options:enumerationOptions usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        numbersSum += [substring integerValue] * [multipliers[index] integerValue];
        index++;
    }];
    
    NSInteger digitCalculation = 11 - (numbersSum % 11);

    NSString *computedDigit = digitCalculation == 10 ? @"K" : [NSString stringWithFormat:@"%d", digitCalculation];
    
    if ([digit isEqualToString:computedDigit]) {
        return YES;
    }

    return NO;
}
@end
