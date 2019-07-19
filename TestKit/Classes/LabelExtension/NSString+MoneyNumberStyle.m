//
//  NSString+MoneyNumberStyle.m
//  yingu
//
//  Created by DFYG-Internet on 2018/11/21.
//  Copyright © 2018 Yingu-corp. All rights reserved.
//

#import "NSString+MoneyNumberStyle.h"

@implementation NSString (MoneyNumberStyle)
- (NSString*)GetMoneyNumberStyleHasDecimalPoint:(BOOL)hasDecimalPoint AndHasUnit:(BOOL)hasUnit
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        // 设置格式
    if ([self rangeOfString:@","].location != NSNotFound) {
        return self;
    }
    if (hasUnit) {
        if (hasDecimalPoint) {
            [numberFormatter setPositiveFormat:@"###,##0.00元;"];
        }else{
            [numberFormatter setPositiveFormat:@"###,##0元;"];
        }
    }else{
        if (hasDecimalPoint) {
            [numberFormatter setPositiveFormat:@"###,##0.00;"];
        }else{
            [numberFormatter setPositiveFormat:@"###,##0;"];
        }
    }
    
    
    NSString *formattedNumberString = [numberFormatter stringFromNumber:[NSNumber numberWithDouble:self.doubleValue]];
    return formattedNumberString;
}

- (NSString*)GetMoneyNumberStyleWithUnitAndDecimalPoint
{
    return [self GetMoneyNumberStyleHasDecimalPoint:YES AndHasUnit:YES];
}

- (NSString*)GetMoneyNumberStyleWithUnitAndWithOutDecimalPoint
{
    return [self GetMoneyNumberStyleHasDecimalPoint:NO AndHasUnit:YES];
}

- (NSString*)GetMoneyNumberStyleWithOutUnitAndDecimalPoint
{
    return [self GetMoneyNumberStyleHasDecimalPoint:NO AndHasUnit:NO];
}

- (NSString*)GetMoneyNumberStyleWithDecimalPointAndWithoutUnit
{
    return [self GetMoneyNumberStyleHasDecimalPoint:YES AndHasUnit:NO];
}

@end
