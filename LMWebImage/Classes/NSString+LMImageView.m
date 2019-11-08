//
//  NSString+LMImageView.m
//  LMWebImage
//
//  Created by 李苗 on 2019/11/7.
//  Copyright © 2019 李苗. All rights reserved.
//

#import "NSString+LMImageView.h"

@implementation NSString (LMImageView)

- (NSString *)addHttp{
    if (self.length == 0 ||
        [self isKindOfClass:[NSNull class]] ||
        [self isEqualToString:@"null"]) {
        return @"http://";
    }
    
    if ([self hasPrefix:@"http"]) {
        return self;
    }
       
    return [NSString stringWithFormat:@"http:%@",self];
}

- (NSURL *)url{
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wdeprecated-declarations"
    return [NSURL URLWithString:(NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)self, (CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]", NULL,kCFStringEncodingUTF8))];
#pragma clang diagnostic pop
}


@end
