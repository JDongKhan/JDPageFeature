//
//  JDPageFeature.h
//  JDCore
//
//  Created by JD on 2018/10/19.
//

#import <Foundation/Foundation.h>
#import "JDPageFeatureProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface JDPageFeature : NSObject<JDPageFeatureProtocol>

//feature id，可传枚举
@property (nonatomic, assign) NSInteger featureID;

//是否能响应事件
- (BOOL)respondsEvent:(NSInteger)event;

@end

NS_ASSUME_NONNULL_END
