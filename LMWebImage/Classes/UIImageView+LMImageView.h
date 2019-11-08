//
//  UIImageView+LMImageView.h
//  LMWebImage
//
//  Created by 李苗 on 2019/11/7.
//  Copyright © 2019 李苗. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <SDWebImage.h>
#import "CALayer+LMImageView.h"

@interface UIImageView (LMImageView)


/// <#Description#>
/// @param urlString <#urlString description#>
/// @param placeholderImage <#placeholderImage description#>
/// @param options <#options description#>
/// @param progressBlock <#progressBlock description#>
/// @param completedBlock <#completedBlock description#>
- (void)lm_imageWithUrlString:(NSString * _Nullable)urlString
             placeholderImage:(UIImage * _Nullable)placeholderImage
                 animtionType:(_Nullable CATransitionType)animtionType
             animtionDuration:(NSTimeInterval)animtionDuration
                      options:(SDWebImageOptions)options
                     progress:(nullable SDWebImageDownloaderProgressBlock)progressBlock
                    completed:(nullable SDExternalCompletionBlock)completedBlock;

- (void)lm_imageWithUrlString:(NSString * _Nullable)urlString
             placeholderImage:(UIImage * _Nullable)placeholderImage;

@end

