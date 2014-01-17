//
//  SIIconView.m
//  MRProgress
//
//  Created by ChenYu Xiao on 1/17/14.
//  Copyright (c) 2014 Marius Rackwitz. All rights reserved.
//

#import "SIIconView.h"

@implementation SIIconView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

@end


@implementation SICheckmarkIconView

- (void)drawRect:(CGRect)rect
{
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


@implementation SICrossIconView

- (void)drawRect:(CGRect)rect
{
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
        [bezierPath moveToPoint: CGPointMake(55.81, 56.17)];
        [bezierPath addLineToPoint: CGPointMake(44.5, 44.85)];
        [bezierPath addLineToPoint: CGPointMake(33.19, 56.17)];
        [bezierPath addLineToPoint: CGPointMake(32.83, 55.81)];
        [bezierPath addLineToPoint: CGPointMake(44.15, 44.5)];
        [bezierPath addLineToPoint: CGPointMake(32.83, 33.19)];
        [bezierPath addLineToPoint: CGPointMake(33.19, 32.83)];
        [bezierPath addLineToPoint: CGPointMake(44.5, 44.15)];
        [bezierPath addLineToPoint: CGPointMake(55.81, 32.83)];
        [bezierPath addLineToPoint: CGPointMake(56.17, 33.19)];
        [bezierPath addLineToPoint: CGPointMake(44.85, 44.5)];
        [bezierPath addLineToPoint: CGPointMake(56.17, 55.81)];
        [bezierPath addLineToPoint: CGPointMake(55.81, 56.17)];
        [bezierPath addLineToPoint: CGPointMake(55.81, 56.17)];
        [bezierPath closePath];
        bezierPath.miterLimit = 4;
        
        bezierPath.usesEvenOddFillRule = YES;
        
        [color1 setFill];
        [bezierPath fill];
    }
}

@end
