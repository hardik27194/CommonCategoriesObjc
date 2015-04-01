//
//  CIFilter.m
//  ZTestCorImg2
//
//  Created by Yu Lo on 12/22/14.
//  Copyright (c) 2014 Horns & Hoofs. All rights reserved.
//

#import "CIFilter(extra).h"

@implementation CIFilter (extra)

- (id)objectForKeyedSubscript:(NSString *)key {
	return [self valueForKey:key];
}

- (void)setObject:(id)obj forKeyedSubscript:(NSString *)key {
	[self setValue:obj forKey:key];
}

- (void)setZInputImage:(CIImage *)img {
	[self setValue:img forKey:kCIInputImageKey];
}

- (CIImage *)zInputImage {
	return [self valueForKey:kCIInputImageKey];
}

- (void)setZOutputImage:(CIImage *)img {
	[self setValue:img forKey:kCIOutputImageKey];
}

- (CIImage *)zOutputImage {
	return [self valueForKey:kCIOutputImageKey];
}

- (void)setZBackgroundImage:(CIImage *)img {
	[self setValue:img forKey:kCIInputBackgroundImageKey];
}

- (CIImage *)zBackgroundImage {
	return [self valueForKey:kCIInputBackgroundImageKey];
}

- (float)zInputTime {
	return [[self valueForKey:kCIInputTimeKey] floatValue];
}

- (void)setZInputTime:(float)time {
	[self setValue:@(time) forKey:kCIInputTimeKey];
}

- (CIImage *)zInputTargetImage {
	return [self valueForKey:kCIInputTargetImageKey];
}

- (void)setZInputTargetImage:(CIImage *)img {
	[self setValue:img forKey:kCIInputTargetImageKey];
}

//TODO: add these
CORE_IMAGE_EXPORT NSString *kCIInputTimeKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputTransformKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputScaleKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputAspectRatioKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputCenterKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputRadiusKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputAngleKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputWidthKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputSharpnessKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputIntensityKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputEVKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputSaturationKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputColorKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputBrightnessKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputContrastKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputMaskImageKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputTargetImageKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputExtentKey __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_7_0);
CORE_IMAGE_EXPORT NSString *kCIInputVersionKey __OSX_AVAILABLE_STARTING(__MAC_NA, __IPHONE_6_0);

@end
