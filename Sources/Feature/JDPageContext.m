//
//  JDPageContext.m
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import "JDPageContext.h"
#import "JDPageViewController.h"
#import "JDPageFeature.h"

@implementation JDPageContext

- (void)sendEvent:(JDPageEvent *)event {
    if ([self.pageViewController isKindOfClass:[JDPageViewController class]]) {
        JDPageViewController *pageVC = (JDPageViewController *)self.pageViewController;
        NSArray<JDPageFeature *> *allFeature = [pageVC.pageManager allFeature];
        [allFeature enumerateObjectsUsingBlock:^(JDPageFeature * _Nonnull feature, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([feature respondsEvent:event.eventID]) {
                if ([feature respondsToSelector:@selector(receiveEvent:context:)]) {
                    [feature receiveEvent:event context:self];
                }
            }
        }];
    }
}

@end
