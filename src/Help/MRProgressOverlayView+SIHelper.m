//
//  MRProgressOverlayView+SIHelper.m
//  MRProgress
//
//  Created by ChenYu Xiao on 1/15/14.
//  Copyright (c) 2014 Marius Rackwitz. All rights reserved.
//

#import "MRProgressOverlayView+SIHelper.h"
#import "SIIconView.h"

@implementation MRProgressOverlayView (SIHelper)


+ (instancetype)sharedView {
    static dispatch_once_t once;
    static MRProgressOverlayView *sharedView;
    dispatch_once(&once, ^ {
        sharedView = [self new];
        sharedView.tintColor = [UIColor colorWithRed: 0.226 green: 0.675 blue: 0.677 alpha: 1];
        
    });
    return sharedView;
}

+ (void)showWithMaskType:(MRProgressOverlayViewType)type
{
    [self showWithMaskType:type animated:YES];
}

+ (void)showWithMaskType:(MRProgressOverlayViewType)type animated:(BOOL)animated
{
    [self showStatus:@"Loading..." withCustoModeView:nil duration:-1 maskType:type];
}

+ (void)dismiss
{
    [MRProgressOverlayView sharedView].stopBlock = nil;
    [MRProgressOverlayView dismissOverlayForView:[self rootView] animated:YES];
}

+ (void)showSuccessWithStatus:(NSString*)string
{
    [self showStatus:string withCustoModeView:[SICheckmarkIconView new] duration:1.0 maskType:MRProgressOverlayViewTypeClear];
}

+ (void)showErrorWithStatus:(NSString *)string
{
    [self showStatus:string withCustoModeView:[SICrossIconView new] duration:1.0 maskType:MRProgressOverlayViewTypeClear];
}

+ (void)showStatus:(NSString *)string withCustoModeView:(UIView *)modeView duration:(NSTimeInterval)duration maskType:(MRProgressOverlayViewType)type
{
    MRProgressOverlayView *progressView = [self sharedView];
    
    if (![[[self rootView] subviews] containsObject:progressView]) {
        [[self rootView] addSubview:progressView];
        [progressView show:YES];
    } else {
        [progressView show:NO];
    }
    
    switch (type) {
        case MRProgressOverlayViewTypeClear:
            progressView.backgroundColor = UIColor.clearColor;
            break;
        case MRProgressOverlayViewTypeBlack:
            progressView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4f];
            break;
        default:
            break;
    }
    
    if (modeView) {
        progressView.modeView.hidden = YES;
        if ([progressView.modeView respondsToSelector:@selector(stopAnimating)]) {
            [progressView.modeView performSelector:@selector(stopAnimating)];
        }
        progressView.modeView = modeView;
    } else {
        progressView.mode = MRProgressOverlayViewModeIndeterminate;
    }
    
    progressView.titleLabelText = string;
    if (duration != -1) {
        [self performBlock:^{
            [progressView dismiss:YES];
        } afterDelay:duration ?: 1.0];
    }
}

#pragma mark - private method

+ (UIWindow *)rootView
{
    NSEnumerator *frontToBackWindows = [[[UIApplication sharedApplication] windows] reverseObjectEnumerator];
    
    for (UIWindow *window in frontToBackWindows) {
        if (window.windowLevel == UIWindowLevelNormal) {
            return window;
        }
    }
    return nil;
}

+ (void)performBlock:(void(^)())block afterDelay:(NSTimeInterval)delay {
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), block);
}

@end
