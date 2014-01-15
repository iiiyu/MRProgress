//
//  MRProgressOverlayView+SIHelper.m
//  MRProgress
//
//  Created by ChenYu Xiao on 1/15/14.
//  Copyright (c) 2014 Marius Rackwitz. All rights reserved.
//

#import "MRProgressOverlayView+SIHelper.h"

@implementation MRProgressOverlayView (SIHelper)

+ (void)showSuccessWithStatus:(NSString*)string
{
    [self showStatus:string withCustoModeView:[MRCheckmarkIconView new] duration:1.0];
}

+ (void)showErrorWithStatus:(NSString *)string
{
    [self showStatus:string withCustoModeView:[MRCrossIconView new] duration:1.0];
}

+ (void)showStatus:(NSString *)string withCustoModeView:(UIView *)modeView duration:(NSTimeInterval)duration
{
    MRProgressOverlayView *progressView = [MRProgressOverlayView showOverlayAddedTo:[self rootView] animated:YES];
    
    if (modeView) {
        progressView.modeView.hidden = YES;
        if ([progressView.modeView respondsToSelector:@selector(stopAnimating)]) {
            [progressView.modeView performSelector:@selector(stopAnimating)];
        }
        progressView.modeView = modeView;
    }
    
    progressView.titleLabelText = string;
    [self performBlock:^{
        [progressView dismiss:YES];
    } afterDelay:duration ?: 1.0];
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
