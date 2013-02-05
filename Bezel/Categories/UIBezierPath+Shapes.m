//
//  UIBezierPath+Shapes.m
//  Bezel
//
//  Created by John Clem on 1/30/12.
//  Copyright (c) 2013 Mind Diaper. All rights reserved.
//

#import "UIBezierPath+Shapes.h"

@implementation UIBezierPath (Shapes)

+ (UIBezierPath*)pathForSize:(CGSize)size withIdentifier:(NSString*)identifier
{
    CGRect frame = CGRectMake(0, 0, size.width, size.width);
    UIBezierPath* bezierPath;

    if ([identifier isEqualToString:@"Circle"]) {
        UIBezierPath* circlePath = [UIBezierPath bezierPath];
        [circlePath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50001 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05000 * CGRectGetHeight(frame))];
        [circlePath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.05000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.25148 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05000 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.05000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25147 * CGRectGetHeight(frame))];
        [circlePath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50001 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.05000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74854 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.25148 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95000 * CGRectGetHeight(frame))];
        [circlePath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.95000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.74853 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95000 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.95000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74854 * CGRectGetHeight(frame))];
        [circlePath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50001 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.95000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25147 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.74853 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.05000 * CGRectGetHeight(frame))];
        [circlePath closePath];
        [[UIColor blackColor] setFill];
        [circlePath fill];
        bezierPath = circlePath;
    } else if ([identifier isEqualToString:@"Triangle"]) {
        UIBezierPath* trianglePath = [UIBezierPath bezierPath];
        [trianglePath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.05000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10000 * CGRectGetHeight(frame))];
        [trianglePath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.89137 * CGRectGetHeight(frame))];
        [trianglePath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.95000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10000 * CGRectGetHeight(frame))];
        [trianglePath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.05000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.10000 * CGRectGetHeight(frame))];
        [trianglePath closePath];
        [[UIColor blackColor] setFill];
        [trianglePath fill];
        bezierPath = trianglePath;
    } else {
        bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.91072 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64568 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.94776 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47699 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.93308 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.59376 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.94609 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53678 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.94385 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32046 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.95135 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.43158 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.95102 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37929 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.91467 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29193 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.94198 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30515 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.92980 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29324 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.88120 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31505 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.89955 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29071 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.88558 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30027 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65162 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.54095 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.82335 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51036 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.65850 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53981 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.62452 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.57571 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.63505 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.54355 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.62321 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.55869 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65655 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60585 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.62580 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.59271 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.63977 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60585 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.72986 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60585 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.74433 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64104 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.75925 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60798 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.75339 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.62786 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.64900 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72877 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.71919 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67680 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.68664 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.70678 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.64769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72932 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.64859 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72889 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.64817 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72909 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.57538 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69820 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.62491 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74088 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.57662 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74667 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.57538 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31789 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.60232 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22311 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.57538 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27922 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.58201 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25799 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.60223 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22315 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.62250 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.15461 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.61502 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.20349 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.62250 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17995 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49988 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.62248 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08579 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.56760 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03000 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.37725 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.15461 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.43214 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.03000 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.37725 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.08579 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.39886 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.22519 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.37725 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.18083 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.38527 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.20513 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.42437 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30648 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.41618 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.25529 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.42312 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.27544 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.42437 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69301 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.35201 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72934 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.42670 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74728 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.37556 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.74131 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.35099 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72891 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.35162 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72914 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.35129 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.72901 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25642 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64247 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.31373 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.70723 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.28149 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67766 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.25586 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64159 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.25623 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64216 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.25607 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64190 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.26999 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60587 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.24661 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.62843 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.24019 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60804 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34343 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60587 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34357 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60587 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.34347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60587 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34353 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60587 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.37569 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.57320 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.36132 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.60587 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.37569 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.59126 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34767 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.54085 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.37569 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.55660 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.36347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.54289 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.11878 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.31507 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.33337 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53825 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.17519 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50554 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.08529 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29195 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.11439 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30031 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.10048 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29071 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.05613 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.32048 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.07016 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.29326 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.05798 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.30515 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.05189 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47256 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.04920 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37741 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.04869 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.42819 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.09098 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65011 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.05307 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53570 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.06691 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.59570 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.11009 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68968 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.10094 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67457 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.10905 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68802 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.11318 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69380 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.11100 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69117 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.11206 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69252 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.39757 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90731 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.17444 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.79980 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.27662 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87849 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.39670 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90729 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49438 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.96863 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.46478 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92085 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.47783 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.96127 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49438 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.96863 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.49992 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97000 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.49618 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.96955 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.49801 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97000 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50813 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.96695 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.50277 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.97000 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.50554 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.96892 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.60281 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90729 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.52347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95647 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.53886 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.92004 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.60227 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90731 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.88631 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69438 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.72300 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87851 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.82504 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.80010 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.88993 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68968 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.88762 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69294 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.88887 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.69141 * CGRectGetHeight(frame))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.91072 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.64568 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.89097 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68792 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.90001 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.67294 * CGRectGetHeight(frame))];
        [bezierPath closePath];
        [[UIColor blackColor] setFill];
        [bezierPath fill];
   
    }

    return bezierPath;
}

@end
