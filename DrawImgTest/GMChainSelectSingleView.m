//
//  GMChainSelectSingleView.m
//  GlobalTimes
//
//  Created by MXTH on 2017/7/12.
//  Copyright © 2017年 Hannah. All rights reserved.
//

#import "GMChainSelectSingleView.h"


@interface GMChainSelectSingleView ()

@end

@implementation GMChainSelectSingleView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        CGRect rect = self.frame;
        
//        CAShapeLayer *layer = [CAShapeLayer layer];
//        [layer setFillColor:[UIColor whiteColor].CGColor];
//        
//            UIBezierPath *maskPath = [UIBezierPath bezierPath];
//            maskPath.lineJoinStyle = kCGLineJoinBevel;
//            [[UIColor redColor] setStroke];
//        //    [[UIColor whiteColor] setFill];
//            [maskPath moveToPoint:CGPointMake(0, 0)];
//            [maskPath addLineToPoint:CGPointMake(0, rect.size.height-5)];
//            [maskPath addArcWithCenter:CGPointMake(5, rect.size.height-5) radius:5 startAngle:M_PI endAngle:M_PI_2 clockwise:NO];
//            [maskPath addLineToPoint:CGPointMake(rect.size.width-5, rect.size.height)];
//            [maskPath addArcWithCenter:CGPointMake(rect.size.width-5, rect.size.height-5) radius:5 startAngle:M_PI_2 endAngle:0 clockwise:NO];
//            [maskPath addLineToPoint:CGPointMake(rect.size.width, 0)];
//            [maskPath stroke];
//        
//        layer.strokeColor = [UIColor redColor].CGColor;
//        layer.lineJoin = @"bevel";
//        layer.path = maskPath.CGPath;
//        self.layer.mask = layer;
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    UIColor *lineColor = [UIColor redColor];
//    CGContextSetStrokeColorWithColor(context, lineColor.CGColor);
//    CGContextSetLineWidth(context, 1.0);
//    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
//    CGContextBeginPath(context);
//    
//    CGContextMoveToPoint(context, 0, 0);
//    CGContextAddLineToPoint(context, 0, rect.size.height-5);
//    CGContextAddArc(context, 5, rect.size.height-5, 5, M_PI, M_PI_2, 1);
//    CGContextAddLineToPoint(context, rect.size.width-5, rect.size.height);
//    CGContextAddArc(context, rect.size.width-5, rect.size.height-5, 5, M_PI_2, 0, 1);
//    CGContextAddLineToPoint(context, rect.size.width, 0);
////    CGContextStrokePath(context);
//    CGContextDrawPath(context, kCGPathFillStroke);
    
    
    
    UIBezierPath *maskPath = [UIBezierPath bezierPath];
    maskPath.lineWidth = 1.0;
    [[UIColor redColor] setStroke];
//    [[UIColor whiteColor] setFill];
    [maskPath moveToPoint:CGPointMake(0, 0)];
    [maskPath addLineToPoint:CGPointMake(0, rect.size.height-5)];
    [maskPath addArcWithCenter:CGPointMake(4, rect.size.height-5) radius:5 startAngle:M_PI endAngle:M_PI_2 clockwise:NO];
    [maskPath addLineToPoint:CGPointMake(rect.size.width-4, rect.size.height+1)];
    [maskPath addArcWithCenter:CGPointMake(rect.size.width-4, rect.size.height-4) radius:5 startAngle:M_PI_2 endAngle:0 clockwise:NO];
    [maskPath addLineToPoint:CGPointMake(rect.size.width+1, 0)];
    [maskPath stroke];
//    [maskPath fill];
    
    

}





- (void)setDataArr:(NSArray *)dataArr{
    _dataArr = dataArr;
    
    
}



@end
