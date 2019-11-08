//
//  LMWebImageConfigCenter.m
//  LMWebImage
//
//  Created by 李苗 on 2019/11/7.
//  Copyright © 2019 李苗. All rights reserved.
//

#import "LMWebImageConfigCenter.h"
#import <SDWebImage.h>

@implementation LMWebImageConfigCenter

//全局变量
static id _instance = nil;
#pragma mark - 单例方法
+ (instancetype)defaultCenter{
    return [[self alloc] init];
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    //只进行一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (instancetype)init{
    // 只进行一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super init];
        self.downloadTimeout = 3.0f;
    });
    return _instance;
}
//copy在底层 会调用copyWithZone:
- (id)copyWithZone:(NSZone *)zone{
    return  _instance;
}


#pragma mark - 配置默认属性


#pragma mark - 配置下载图片超时时间
- (void)setDownloadTimeout:(NSTimeInterval)downloadTimeout{
    _downloadTimeout = downloadTimeout;
    [SDWebImageDownloaderConfig defaultDownloaderConfig].downloadTimeout = downloadTimeout;
}


@end
