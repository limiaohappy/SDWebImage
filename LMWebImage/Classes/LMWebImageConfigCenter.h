//
//  LMWebImageConfigCenter.h
//  LMWebImage
//
//  Created by 李苗 on 2019/11/7.
//  Copyright © 2019 李苗. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMWebImageConfigCenter : NSObject

+ (instancetype)defaultCenter;

@property (nonatomic, assign) NSTimeInterval downloadTimeout;

@end

NS_ASSUME_NONNULL_END
