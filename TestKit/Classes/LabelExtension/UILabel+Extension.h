//
//  UILabel+Extension.h
//  yingu
//
//  Created by DFYG-Internet on 2018/6/14.
//  Copyright © 2018年 Yingu-corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel(Extension)
@property (nonatomic) NSString *verticalText;
@property (nonatomic) NSString *MoneyNumStyleOne;//有小数点后两位以及单位(元)模式
@property (nonatomic) NSString *MoneyNumStyleTwo;//有小数点后2位但无单位
@property (nonatomic) NSString *MoneyNumStyleThree;//无小数点后2位但有单位
@property (nonatomic) NSString *MoneyNumStyleFour;//无小数点后2位且无单位
@property (nonatomic) NSString *MoneyNumStyleFive;//无小数点后2位单位万元(不计算传入值单位为分的情况)
@end
