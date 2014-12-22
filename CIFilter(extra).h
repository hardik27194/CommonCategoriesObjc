//
//  CIFilter.h
//  ZTestCorImg2
//
//  Created by Yu Lo on 12/22/14.
//  Copyright (c) 2014 Horns & Hoofs. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface CIFilter (extra)
@property (nonatomic, assign) CIImage *inputImage;
@property (nonatomic, assign) CIImage *outputImage;
@property (nonatomic, assign) CIImage *backgroundImage;
- (id)objectForKeyedSubscript:(NSString *)key;
- (void)setObject:(id)obj forKeyedSubscript:(NSString *)key;
@end
