//
//  UIImageView+LMImageView.m
//  LMWebImage
//
//  Created by 李苗 on 2019/11/7.
//  Copyright © 2019 李苗. All rights reserved.
//

#import "UIImageView+LMImageView.h"

#import "NSString+LMImageView.h"


@implementation UIImageView (LMImageView)



- (void)lm_imageWithUrlString:(NSString *)urlString placeholderImage:(UIImage *)placeholderImage animtionType:(_Nullable CATransitionType)animtionType animtionDuration:(NSTimeInterval)animtionDuration  options:(SDWebImageOptions)options progress:(SDWebImageDownloaderProgressBlock)progressBlock completed:(SDExternalCompletionBlock)completedBlock{
    
    __weak __typeof__(self) weakSelf = self;
    
    [self sd_setImageWithURL:urlString.addHttp.url placeholderImage:placeholderImage  options:options completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        __strong __typeof(self) strongSelf = weakSelf;

        if (animtionType && animtionDuration > 0  && image && cacheType == SDImageCacheTypeNone) {
            [strongSelf.layer animtionWithType:animtionType duration:animtionDuration];
        }

        completedBlock ? completedBlock(image,error,cacheType,imageURL):nil;
    }];
    
}

- (void)lm_imageWithUrlString:(NSString *)urlString placeholderImage:(UIImage *)placeholderImage{
    [self lm_imageWithUrlString:urlString placeholderImage:placeholderImage animtionType:kCATransitionFade animtionDuration:1.2f options:SDWebImageAllowInvalidSSLCertificates|SDWebImageQueryDiskDataSync|SDWebImageQueryMemoryDataSync progress:nil completed:nil];
}





@end
