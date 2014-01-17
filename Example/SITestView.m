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
        [bezierPath moveToPoint: CGPointMake(44.5, 67)];
        [bezierPath addCurveToPoint: CGPointMake(22, 44.5) controlPoint1: CGPointMake(32.07, 67) controlPoint2: CGPointMake(22, 56.93)];
        [bezierPath addCurveToPoint: CGPointMake(44.5, 22) controlPoint1: CGPointMake(22, 32.07) controlPoint2: CGPointMake(32.07, 22)];
        [bezierPath addCurveToPoint: CGPointMake(67, 44.5) controlPoint1: CGPointMake(56.93, 22) controlPoint2: CGPointMake(67, 32.07)];
        [bezierPath addCurveToPoint: CGPointMake(44.5, 67) controlPoint1: CGPointMake(67, 56.93) controlPoint2: CGPointMake(56.93, 67)];
        [bezierPath addLineToPoint: CGPointMake(44.5, 67)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(44.5, 22.5)];
        [bezierPath addCurveToPoint: CGPointMake(22.5, 44.5) controlPoint1: CGPointMake(32.35, 22.5) controlPoint2: CGPointMake(22.5, 32.35)];
        [bezierPath addCurveToPoint: CGPointMake(44.5, 66.5) controlPoint1: CGPointMake(22.5, 56.65) controlPoint2: CGPointMake(32.35, 66.5)];
        [bezierPath addCurveToPoint: CGPointMake(66.5, 44.5) controlPoint1: CGPointMake(56.65, 66.5) controlPoint2: CGPointMake(66.5, 56.65)];
        [bezierPath addCurveToPoint: CGPointMake(44.5, 22.5) controlPoint1: CGPointMake(66.5, 32.35) controlPoint2: CGPointMake(56.65, 22.5)];
        [bezierPath addLineToPoint: CGPointMake(44.5, 22.5)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(39.2, 54.89)];
        [bezierPath addLineToPoint: CGPointMake(30.36, 46.05)];
        [bezierPath addLineToPoint: CGPointMake(30.71, 45.7)];
        [bezierPath addLineToPoint: CGPointMake(39.2, 54.19)];
        [bezierPath addLineToPoint: CGPointMake(58.29, 35.09)];
        [bezierPath addLineToPoint: CGPointMake(58.64, 35.45)];
        [bezierPath addLineToPoint: CGPointMake(39.2, 54.89)];
        [bezierPath addLineToPoint: CGPointMake(39.2, 54.89)];
        [bezierPath closePath];
        bezierPath.miterLimit = 4;
        
        bezierPath.usesEvenOddFillRule = YES;
        
        [color1 setFill];
        [bezierPath fill];
    }
}


@end
