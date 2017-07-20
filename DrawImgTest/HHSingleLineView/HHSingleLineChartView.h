//
//  HHSingleLineChartView.h
//  GlobalTimes
//
//  Created by apple on 16/9/10.
//  Copyright © 2016年 Hannah. All rights reserved.
//

#import <UIKit/UIKit.h>

//适配 ---------------------
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENH_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size

//用分辨率做屏幕的适配（基于6s）
#define kMaxOfWOrH MAX(SCREEN_WIDTH, SCREENH_HEIGHT)
#define kMinOfWOrH MIN(SCREEN_WIDTH, SCREENH_HEIGHT)
/**
 *   高度 * 屏幕高 / 1334
 */
#define kRelativeHeight(h) (h) * kMaxOfWOrH / 667.0
/**
 *   宽度 * 屏幕宽 / 750
 */
#define kRelativeWidth(w) (w) * kMinOfWOrH / 375.0
#define kRelativeFontSize(fs) fs * kMinOfWOrH / 375.0
#define kFont(fs) [UIFont systemFontOfSize:kRelativeFontSize(fs)]

#define kWidthPercent kMinOfWOrH / 375.0
#define kHeightPercent kMaxOfWOrH / 667.0

#define HHMainScreenWidth [UIScreen mainScreen].bounds.size.width
#define HHMainScreenHeight [UIScreen mainScreen].bounds.size.height
#define HHMainScreenBounds [UIScreen mainScreen].bounds

// 设置颜色
#define HHColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
// 随机色
#define HHRandomColor HHColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
//可设置透明度及颜色
#define HHAlphaColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]


@interface HHSingleLineChartView : UIView

@property (nonatomic, copy) NSArray *xValues;
@property (nonatomic, copy) NSArray *yValues;

@property (nonatomic, strong) UIColor *gridLineColor;
@property (nonatomic, strong) UIColor *xyLabelColor;
@property (nonatomic, strong) UIColor *curveColor;//HHColor(247, 26, 48)
@property (nonatomic, strong) UIColor *gradientStartColor;//HHColor(250, 218, 216)
@property (nonatomic, strong) UIColor *gradientEndColor;
@property (nonatomic, strong) UIColor *pointColor;
@property (nonatomic, strong) UIColor *popBgColor;
@property (nonatomic, strong) UIColor *popTextColor;

- (void)drawChart;

@end
