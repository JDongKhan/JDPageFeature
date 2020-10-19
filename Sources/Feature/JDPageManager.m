//
//  JDPageManager.m
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import "JDPageManager.h"

@implementation JDPageManager {
    NSMutableArray<JDPageFeature *> *_allFeatures;
}

- (instancetype)init {
    if (self = [super init]) {
        _allFeatures = [NSMutableArray array];
    }
    return self;
}

- (void)registerAll:(NSArray<JDPageFeature *> *)features {
    [features enumerateObjectsUsingBlock:^(JDPageFeature *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_allFeatures addObject:obj];
    }];
}

- (void)register:(JDPageFeature *)featureConfig {
    [_allFeatures addObject:featureConfig];
}

- (void)unregister:(JDPageFeature *)featureConfig {
    [_allFeatures removeObject:featureConfig];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    [_allFeatures enumerateObjectsUsingBlock:^(JDPageFeature *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj && [obj respondsToSelector:anInvocation.selector]) {
            [anInvocation invokeWithTarget:obj];
        }
    }];
}

- (JDPageFeature *)featureForTag:(NSInteger)featureID {
    __block JDPageFeature *feature = nil;
    [_allFeatures enumerateObjectsUsingBlock:^(JDPageFeature * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.featureID == featureID) {
            feature = obj;
            *stop = YES;
        }
    }];
    return feature;
}

- (NSArray<JDPageFeature *> *)allFeature {
    return _allFeatures.copy;
}

@end
