//
//  NSString+LMImageView.h
//  LMWebImage
//
//  Created by 李苗 on 2019/11/7.
//  Copyright © 2019 李苗. All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (LMImageView)

// 添加https
@property (nonatomic,readonly) NSString * addHttp;

// url 字符串 转 NSURL 对象
@property (nonatomic,readonly) NSURL *url;

@end

NS_ASSUME_NONNULL_END
