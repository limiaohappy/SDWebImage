//
//  CALayer+LMImageView.m
//  LMWebImage
//
//  Created by 李苗 on 2019/11/7.
//  Copyright © 2019 李苗. All rights reserved.
//

#import "CALayer+LMImageView.h"

@implementation CALayer (LMImageView)

- (void)animtionWithType:(CATransitionType)type duration:(NSTimeInterval)duration{
    CATransition *transition = [CATransition animation];
    transition.type = type;
    transition.duration = duration;
    transition.removedOnCompletion = YES;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self addAnimation:transition forKey:nil];
}

@end
