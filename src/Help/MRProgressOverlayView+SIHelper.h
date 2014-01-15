//
//  MRProgressOverlayView+SIHelper.h
//  MRProgress
//
//  Created by ChenYu Xiao on 1/15/14.
//  Copyright (c) 2014 Marius Rackwitz. All rights reserved.
//

#import "MRProgress.h"

@interface MRProgressOverlayView (SIHelper)

+ (void)showSuccessWithStatus:(NSString*)string;

+ (void)showErrorWithStatus:(NSString *)string;

+ (void)showStatus:(NSString *)string withCustoModeView:(UIView *)modeView duration:(NSTimeInterval)duration;

@end
