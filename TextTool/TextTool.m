//
//  TextTool.m
//  EducationPlanning
//
//  Created by 谢泽锋 on 16/9/24.
//  Copyright © 2016年 xiezefeng. All rights reserved.
//

#import "TextTool.h"
#import <UIKit/UIKit.h>
@implementation TextTool
/**
 *  根据文本信息返回高度
 *
 *  @param string    文本信息
 *  @param widthText 控件宽度
 *  @param fontSize  字体大小
 *
 *  @return 高度
 */
+(CGFloat)changeStationWidth:(NSString *)string anWidthTxtt:(CGFloat)widthText anfont:(CGFloat)fontSize
{
    
    UIFont * tfont = [UIFont systemFontOfSize:fontSize];
    
    //高度估计文本大概要显示几行，宽度根据需求自己定义。 MAXFLOAT 可以算出具体要多高
    
    CGSize size =CGSizeMake(widthText,CGFLOAT_MAX);
    
    //    获取当前文本的属性
    
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:tfont,NSFontAttributeName,nil];
    
    //ios7方法，获取文本需要的size，限制宽度
    
    CGSize  actualsize =[string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    
    return actualsize.height;
    
}
+(CGFloat)changeStationWidth:(NSString *)string anHeightTxtt:(CGFloat)HeightText anfont:(CGFloat)fontSize
{
    
    UIFont * tfont = [UIFont systemFontOfSize:fontSize];
    
    //高度估计文本大概要显示几行，宽度根据需求自己定义。 MAXFLOAT 可以算出具体要多高
    
    CGSize size =CGSizeMake(CGFLOAT_MAX,HeightText);
    
    //    获取当前文本的属性
    
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:tfont,NSFontAttributeName,nil];
    
    //ios7方法，获取文本需要的size，限制宽度
    
    CGSize  actualsize =[string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    
    return actualsize.height;
    
}
@end
