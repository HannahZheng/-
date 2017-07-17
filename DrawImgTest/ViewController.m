//
//  ViewController.m
//  DrawImgTest
//
//  Created by MXTH on 2017/7/6.
//  Copyright © 2017年 Hannah. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "GMChainSelectSingleView.h"
#import "HHSingleLineChartView.h"
#import "CFLineChartView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@property (nonatomic, strong) UIView *specialView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageV.frame = CGRectMake(0, 80, self.view.bounds.size.width, self.view.bounds.size.width+120);
    self.imageV.image = [self createShareImg];
    
    self.imageV.hidden = YES;
    
    [self test2];
//    [self test3];
}

- (void)drawCircle{
    
}

- (void)test3{
    CFLineChartView *LCView = [CFLineChartView lineChartViewWithFrame:CGRectMake(0, 80, self.view.frame.size.width, 130)];
    LCView.isShowLine = YES;
    LCView.isShowPoint = NO;
    LCView.isShowValue = NO;
    LCView.isShowPillar = NO;
    
    LCView.xValues = @[@1,@2,@3,@4,@5,@6,@7];
    LCView.yValues = @[@"100",@"348",@"200",@"60",@"1000",@"500",@"0"];
    [self.view addSubview:LCView];
    
    [LCView drawChartWithLineChartType:LineChartType_Curve pointType:PointType_Circel];
}

- (void)test2{
    HHSingleLineChartView *chartV = [[HHSingleLineChartView alloc] initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, 300)];
    chartV.yValues = @[@"100",@"348",@"200",@"60",@"1000",@"500",@"100"];
    chartV.xValues = @[@1,@2,@3,@4,@5,@6,@7];
    chartV.gridLineColor = HHColor(244, 244, 244);
    chartV.xyLabelColor = HHColor(153, 153, 153);
    chartV.curveColor = HHColor(247, 26, 48);
    chartV.gradientStartColor = HHColor(250, 218, 216);
    chartV.pointColor = HHColor(255, 252, 131);
    chartV.popBgColor = HHColor(247, 26, 48);
    chartV.popTextColor = [UIColor whiteColor];
    [self.view addSubview:chartV];
    [chartV drawChart];
}

- (void)test1{
    _specialView = [[UIView alloc] initWithFrame:CGRectMake(80, 80, 100, 200)];
    _specialView.backgroundColor = [UIColor grayColor];
    
    
    
    
    UIBezierPath *maskPath = [UIBezierPath bezierPath];
    maskPath.lineWidth = 1.0;
    [[UIColor redColor] setStroke];
    [maskPath moveToPoint:CGPointMake(-1, 0)];
    [maskPath addLineToPoint:CGPointMake(-1, _specialView.frame.size.height-5)];
    [maskPath addArcWithCenter:CGPointMake(4, _specialView.frame.size.height-4) radius:5 startAngle:M_PI endAngle:M_PI_2 clockwise:NO];
    [maskPath addLineToPoint:CGPointMake(_specialView.frame.size.width-4, _specialView.frame.size.height+1)];
    [maskPath addArcWithCenter:CGPointMake(_specialView.frame.size.width-4, _specialView.frame.size.height-4) radius:5 startAngle:M_PI_2 endAngle:0 clockwise:NO];
    [maskPath addLineToPoint:CGPointMake(_specialView.frame.size.width+1, 0)];
    [maskPath stroke];
    
    
    //
    //
    //
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = _specialView.bounds;
    //    maskLayer.backgroundColor = [UIColor whiteColor].CGColor;
    //
    //    maskLayer.borderWidth = 1;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:_specialView.bounds];
    [path appendPath:maskPath];
    maskLayer.path = maskPath.CGPath;
    maskLayer.strokeColor = [UIColor redColor].CGColor;
    maskLayer.fillColor = [UIColor whiteColor].CGColor;
    //    maskLayer.fillMode = @"forwards";
    //    maskLayer.masksToBounds = YES;
    //    _specialView.layer.mask = maskLayer;
    [_specialView.layer addSublayer:maskLayer];
    
    //    _specialView.layer.fillMode = @"forwards";
    
    //    _specialView.layer.masksToBounds = YES;
    //    _specialView.layer.borderWidth = 1.0;
    //    _specialView.layer.borderColor = [UIColor redColor].CGColor;
    [self.view addSubview:_specialView];
    
    GMChainSelectSingleView *singleV = [[GMChainSelectSingleView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    singleV.backgroundColor = [UIColor whiteColor];
    
    //
    
    //    UIBezierPath *maskPath2 = [UIBezierPath bezierPathWithRoundedRect:singleV.bounds byRoundingCorners:UIRectCornerBottomLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(3, 3)];
    //    CAShapeLayer *maskLayer2 = [[CAShapeLayer alloc] initWithLayer:singleV.layer];
    //    maskLayer2.path = maskPath2.CGPath;
    //    maskLayer2.borderWidth = 1;
    //    maskLayer2.borderColor = [UIColor redColor].CGColor;
    //    singleV.layer.mask = maskLayer;
    //
    //      singleV.layer.cornerRadius = 5;
    // singleV.layer.masksToBounds = YES;
    [self.view addSubview:singleV];
    

}

- (UIImage *)createShareImg{
    CGSize contextSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.width+120);
    UIGraphicsBeginImageContextWithOptions(contextSize, NO, 0);
    
    
//    
    UIImage *mainImg = [UIImage imageNamed:@"12345"];
//    [mainImg drawInRect:CGRectMake(0, 120, contextSize.width, contextSize.width)];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 0, contextSize.height);
    CGContextScaleCTM(context, 1, -1);
    CGContextDrawImage(context, CGRectMake(0, 0, contextSize.width, contextSize.width), mainImg.CGImage);
    CGContextRestoreGState(context);
    //填充颜色
    UIColor *color = [UIColor brownColor];
    CGContextSetFillColorWithColor(context, color.CGColor);

    
//    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, contextSize.width, 120)];
//    CGContextAddPath(context, path.CGPath);
    
    CGContextSetRGBStrokeColor(context, 1, 1, 1, 1.0);
    CGContextSetLineWidth(context, 0.1);
   
    CGContextFillRect(context, CGRectMake(0, 0, contextSize.width, 120));
//    CGContextStrokeRect(context, CGRectMake(0, 0, contextSize.width, 120));
//    CGContextDrawPath(context, kCGPathFillStroke);
    
    NSDictionary *textDic = @{NSFontAttributeName:[UIFont systemFontOfSize:16],
                              NSForegroundColorAttributeName:[UIColor greenColor]};
    NSString *text = @"五一国庆中秋，年年如此，我想换一个方式来度过";
    CGSize textSize = [text sizeWithAttributes:textDic];
    [text drawInRect:CGRectMake(0, 0, contextSize.width, 120) withAttributes:textDic];
    
    UIImage *newImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImg;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
