//
//  TextTool.h
//  EducationPlanning
//
//  Created by 谢泽锋 on 16/9/24.
//  Copyright © 2016年 xiezefeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TextTool : NSObject
/**
 *  根据文本信息返回高度
 *
 *  @param string    文本信息
 *  @param widthText 控件宽度
 *  @param fontSize  字体大小
 *
 *  @return 高度
 */
+(CGFloat)changeStationWidth:(NSString *)string anWidthTxtt:(CGFloat)widthText anfont:(CGFloat)fontSize;
+(CGFloat)changeStationWidth:(NSString *)string anHeightTxtt:(CGFloat)HeightText anfont:(CGFloat)fontSize;
@end
