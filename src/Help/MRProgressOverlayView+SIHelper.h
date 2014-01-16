//
//  MRProgressOverlayView+SIHelper.h
//  MRProgress
//
//  Created by ChenYu Xiao on 1/15/14.
//  Copyright (c) 2014 Marius Rackwitz. All rights reserved.
//

#import "MRProgressOverlayView.h"
#import "MRIconView.h"

typedef NS_ENUM(NSUInteger, MRProgressOverlayViewType) {
    MRProgressOverlayViewTypeClear = 1,
    MRProgressOverlayViewTypeBlack,
};

@interface MRProgressOverlayView (SIHelper)

+ (void)showWithMaskType:(MRProgressOverlayViewType)type;

+ (void)showSuccessWithStatus:(NSString*)string;

+ (void)showErrorWithStatus:(NSString *)string;

+ (void)showStatus:(NSString *)string withCustoModeView:(UIView *)modeView duration:(NSTimeInterval)duration maskType:(MRProgressOverlayViewType)type;

+ (void)dismiss;

@end
