//
//  CIFilter.h
//  ZTestCorImg2
//
//  Created by Yu Lo on 12/22/14.
//  Copyright (c) 2014 Horns & Hoofs. All rights reserved.
//

//#import <CoreImage/CoreImage.h>
#import <QuartzCore/QuartzCore.h>

@interface CIFilter (extra)
@property (nonatomic, assign) CIImage *zInputImage;
@property (nonatomic, assign) CIImage *zInputTargetImage;
@property (nonatomic, assign) CIImage *zOutputImage;
@property (nonatomic, assign) CIImage *zBackgroundImage;
@property (nonatomic, assign) float zInputTime;
- (id)objectForKeyedSubscript:(NSString *)key;
- (void)setObject:(id)obj forKeyedSubscript:(NSString *)key;
@end
