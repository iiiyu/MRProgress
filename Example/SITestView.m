//
//  SITestView.m
//  Example
//
//  Created by ChenYu Xiao on 1/16/14.
//  Copyright (c) 2014 Marius Rackwitz. All rights reserved.
//

#import "SITestView.h"

@implementation SITestView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    //// Color Declarations
    UIColor* color1 = [UIColor colorWithRed: 0.226 green: 0.675 blue: 0.677 alpha: 1];
    
    //// Page-1
    {
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(22.5, 45)];
        [bezierPath addCurveToPoint: CGPointMake(0, 22.5) controlPoint1: CGPointMake(10.07, 45) controlPoint2: CGPointMake(0, 34.93)];
        [bezierPath addCurveToPoint: CGPointMake(22.5, 0) controlPoint1: CGPointMake(0, 10.07) controlPoint2: CGPointMake(10.07, 0)];
        [bezierPath addCurveToPoint: CGPointMake(45, 22.5) controlPoint1: CGPointMake(34.93, 0) controlPoint2: CGPointMake(45, 10.07)];
        [bezierPath addCurveToPoint: CGPointMake(22.5, 45) controlPoint1: CGPointMake(45, 34.93) controlPoint2: CGPointMake(34.93, 45)];
        [bezierPath addLineToPoint: CGPointMake(22.5, 45)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(22.5, 0.5)];
        [bezierPath addCurveToPoint: CGPointMake(0.5, 22.5) controlPoint1: CGPointMake(10.35, 0.5) controlPoint2: CGPointMake(0.5, 10.35)];
        [bezierPath addCurveToPoint: CGPointMake(22.5, 44.5) controlPoint1: CGPointMake(0.5, 34.65) controlPoint2: CGPointMake(10.35, 44.5)];
        [bezierPath addCurveToPoint: CGPointMake(44.5, 22.5) controlPoint1: CGPointMake(34.65, 44.5) controlPoint2: CGPointMake(44.5, 34.65)];
        [bezierPath addCurveToPoint: CGPointMake(22.5, 0.5) controlPoint1: CGPointMake(44.5, 10.35) controlPoint2: CGPointMake(34.65, 0.5)];
        [bezierPath addLineToPoint: CGPointMake(22.5, 0.5)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(17.2, 32.89)];
        [bezierPath addLineToPoint: CGPointMake(8.36, 24.05)];
        [bezierPath addLineToPoint: CGPointMake(8.71, 23.7)];
        [bezierPath addLineToPoint: CGPointMake(17.2, 32.19)];
        [bezierPath addLineToPoint: CGPointMake(36.29, 13.09)];
        [bezierPath addLineToPoint: CGPointMake(36.64, 13.45)];
        [bezierPath addLineToPoint: CGPointMake(17.2, 32.89)];
        [bezierPath addLineToPoint: CGPointMake(17.2, 32.89)];
        [bezierPath closePath];
        bezierPath.miterLimit = 4;
        
        bezierPath.usesEvenOddFillRule = YES;
        
        [color1 setFill];
        [bezierPath fill];
    }
}


@end
