//
//  JDPageFeature.m
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import "JDPageFeature.h"

@implementation JDPageFeature

+ (instancetype)featureWithID:(NSInteger)featureID {
    JDPageFeature *feature = [[JDPageFeature alloc] init];
    feature.featureID = featureID;
    return feature;
}

- (BOOL)respondsEvent:(NSInteger)event {
    return NO;
}

@end
