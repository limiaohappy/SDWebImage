//
//  CALayer+LMImageView.h
//  LMWebImage
//
//  Created by 李苗 on 2019/11/7.
//  Copyright © 2019 李苗. All rights reserved.
//


#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (LMImageView)


- (void)animtionWithType:(CATransitionType)type duration:(NSTimeInterval)duration;


@end

NS_ASSUME_NONNULL_END
