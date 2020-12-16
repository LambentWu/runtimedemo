//
//  UIImage+hz.h
//  runtimedemo
//
//  Created by Lambent on 2020/12/16.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (hz)
+(UIImage *)hz_imageNamed:(NSString *)imageName;
@end

NS_ASSUME_NONNULL_END
