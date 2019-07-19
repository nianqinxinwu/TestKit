//
//  UILabel+Extension.m
//  yingu
//
//  Created by DFYG-Internet on 2018/6/14.
//  Copyright © 2018年 Yingu-corp. All rights reserved.


#import "UILabel+Extension.h"
#import "NSString+MoneyNumberStyle.h"
#import <objc/runtime.h>

@implementation UILabel(Extension)

- (NSString*)verticalText{
    return objc_getAssociatedObject(self, @selector(verticalText));
}

- (void)setVerticalText:(NSString *)verticalText{
    objc_setAssociatedObject(self, &verticalText, verticalText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    NSMutableString *str = [[NSMutableString alloc]initWithString:verticalText];
    NSInteger count = str.length;
    
    for(int i = 1;i < count; i ++){
        [str insertString:@"\n" atIndex:i * 2 - 1];
    }
    self.text = str;
    self.numberOfLines = 0;
}

//有小数点后两位以及单位(元)模式
- (NSString *)MoneyNumStyleOne
{
    return objc_getAssociatedObject(self, @selector(MoneyNumStyleOne));
}

- (void)setMoneyNumStyleOne:(NSString *)MoneyNumStyleOne
{
    NSString * MoneyChangeText = [MoneyNumStyleOne GetMoneyNumberStyleWithUnitAndDecimalPoint];
    objc_setAssociatedObject(self, &MoneyChangeText, MoneyChangeText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.text = MoneyChangeText;
    self.numberOfLines = 0;
}

//有小数点后2位但无单位
- (NSString *)MoneyNumStyleTwo
{
    return objc_getAssociatedObject(self, @selector(MoneyNumStyleTwo));
}

- (void)setMoneyNumStyleTwo:(NSString *)MoneyNumStyleTwo
{
    NSString * MoneyChangeText = [MoneyNumStyleTwo GetMoneyNumberStyleWithDecimalPointAndWithoutUnit];
    objc_setAssociatedObject(self, &MoneyChangeText, MoneyChangeText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.text = MoneyChangeText;
    self.numberOfLines = 0;
}

//无小数点后2位但有单位
- (NSString *)MoneyNumStyleThree
{
    return objc_getAssociatedObject(self, @selector(MoneyNumStyleThree));
}

- (void)setMoneyNumStyleThree:(NSString *)MoneyNumStyleThree
{
    NSString * MoneyChangeText = [MoneyNumStyleThree GetMoneyNumberStyleWithUnitAndWithOutDecimalPoint];
    objc_setAssociatedObject(self, &MoneyChangeText, MoneyChangeText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.text = MoneyChangeText;
    self.numberOfLines = 0;
}

//无小数点后2位且无单位
- (NSString *)MoneyNumStyleFour
{
    return objc_getAssociatedObject(self, @selector(MoneyNumStyleFour));
}

- (void)setMoneyNumStyleFour:(NSString *)MoneyNumStyleFour
{
    NSString * MoneyChangeText = [MoneyNumStyleFour GetMoneyNumberStyleWithOutUnitAndDecimalPoint];
    objc_setAssociatedObject(self, &MoneyChangeText, MoneyChangeText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.text = MoneyChangeText;
    self.numberOfLines = 0;
}

//无小数点后2位单位万元
 - (NSString *)MoneyNumStyleFive
{
    return objc_getAssociatedObject(self, @selector(MoneyNumStyleFive));
}

- (void)setMoneyNumStyleFive:(NSString *)MoneyNumStyleFive
{
    NSString * MoneyChangeText = [MoneyNumStyleFive GetMoneyNumberStyleWithOutUnitAndDecimalPoint];
    MoneyChangeText = [MoneyChangeText stringByAppendingString:@"万元"];
    objc_setAssociatedObject(self, &MoneyChangeText, MoneyChangeText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.text = MoneyChangeText;
    self.numberOfLines = 0;
}
@end
