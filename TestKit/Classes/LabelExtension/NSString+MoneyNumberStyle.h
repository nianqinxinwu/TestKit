//
//  NSString+MoneyNumberStyle.h
//  yingu
//
//  Created by DFYG-Internet on 2018/11/21.
//  Copyright © 2018 Yingu-corp. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (MoneyNumberStyle)


/**

 无小数点后两位以及单位(元)模式

 有小数点后两位以及单位(元)模式


 @return return value description
 */
- (NSString*)GetMoneyNumberStyleWithUnitAndDecimalPoint;

/**

 有小数点后2位但是无单位(元)模式

 无小数点后2位但是有单位(元)模式


 @return return value description
 */
- (NSString*)GetMoneyNumberStyleWithUnitAndWithOutDecimalPoint;


/**
 无小数点后两位以及单位(元)

 @return return value description
 */
- (NSString*)GetMoneyNumberStyleWithOutUnitAndDecimalPoint;

/**
 有小数点后两位，但无单位(元)

 @return return value description
 */
- (NSString*)GetMoneyNumberStyleWithDecimalPointAndWithoutUnit;
@end

NS_ASSUME_NONNULL_END
