//
//  CGGeometryFunctions.h
//
//  Created by 100500 on 12/22/14.
//  Copyright (c) 2014 Leonid 100500. All rights reserved.
//

#ifndef __CGGeometryFunctions__
#define __CGGeometryFunctions__

#include <CoreGraphics/CoreGraphics.h>
#include <UIKit/UIKit.h>

void CGSizeScaleRef(CGSize *const size, const CGFloat scaleFactor);
CGSize CGSizeScale(CGSize size, const CGFloat scaleFactor);
void CGRectScaleRef(CGRect *const rect, const CGFloat scaleFactor);
CGRect CGRectScale(CGRect rect, const CGFloat scaleFactor);
CGRect CGRectMinusInsets(CGRect rect, UIEdgeInsets insets);
CGRect CGRectPlusInsets(CGRect rect, UIEdgeInsets insets);
bool CGRectEqualToRectWithDeltaRef (const CGRect *const rect1, const CGRect *const rect2, const CGFloat delta);
bool CGSizeEqualToSizeWithDelta (const CGSize size1, const CGSize size2, const CGFloat delta);
void CGSizeSwap(CGSize *sizeRef);

#endif /* __CGGeometryFunctions__ */
