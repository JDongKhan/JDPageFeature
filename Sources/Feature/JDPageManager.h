//
//  JDPageManager.h
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import <Foundation/Foundation.h>
#import "JDPageFeature.h"
#import "JDPageFeatureProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface JDPageManager : NSObject<JDPageFeatureProtocol>

//注册所有feature
- (void)registerAll:(NSArray<JDPageFeature *> *)features;

//注册单个
- (void)register:(JDPageFeature *)featureConfig;

//去除注册
- (void)unregister:(JDPageFeature *)featureConfig;

//根据id获取JDPageFeature
- (JDPageFeature *)featureForTag:(NSInteger)featureID;

//获取所有
- (NSArray<JDPageFeature *> *)allFeature;


@end

NS_ASSUME_NONNULL_END
