//
//  CGGeometryFunctions.m
//
//  Created by 100500 on 12/22/14.
//  Copyright (c) 2014 Leonid 100500. All rights reserved.
//

#include "CGGeometryFunctions.h"

void CGSizeScaleRef(CGSize *const size, const CGFloat scaleFactor)
{
	size->width *= scaleFactor;
	size->height *= scaleFactor;
}

CGSize CGSizeScale(CGSize size, const CGFloat scaleFactor)
{
	size.width *= scaleFactor;
	size.height *= scaleFactor;
	return size;
}

void CGRectScaleRef(CGRect *const rect, const CGFloat scaleFactor)
{
	rect->size.width *= scaleFactor;
	rect->size.height *= scaleFactor;
	rect->origin.x *= scaleFactor;
	rect->origin.y *= scaleFactor;
}

CGRect CGRectScale(CGRect rect, const CGFloat scaleFactor)
{
	rect.size.width *= scaleFactor;
	rect.size.height *= scaleFactor;
	rect.origin.x *= scaleFactor;
	rect.origin.y *= scaleFactor;
	return rect;
}

CGRect CGRectMinusInsets(CGRect rect, UIEdgeInsets insets) {
	rect.origin.x += insets.left;
	rect.origin.y += insets.top;
	rect.size.width -= insets.left + insets.right;
	rect.size.height -= insets.top + insets.bottom;
	return rect;
}

CGRect CGRectPlusInsets(CGRect rect, UIEdgeInsets insets) {
	rect.origin.x -= insets.left;
	rect.origin.y -= insets.top;
	rect.size.width += insets.left + insets.right;
	rect.size.height += insets.top + insets.bottom;
	return rect;
}

bool CGRectEqualToRectWithDeltaRef (const CGRect *const rect1, const CGRect *const rect2, const CGFloat delta)
{
	assert(rect1 != NULL);
	assert(rect2 != NULL);

#define NOEQUAL(val) (fabs(rect1->val - rect2->val) > delta)
	if (NOEQUAL(origin.x)) {
		return NO;
	}
	if (NOEQUAL(origin.y)) {
		return NO;
	}
	if (NOEQUAL(size.width)) {
		return NO;
	}
	if (NOEQUAL(size.height)) {
		return NO;
	}
#undef NOEQUAL

	return YES;
}

bool CGSizeEqualToSizeWithDelta (const CGSize size1, const CGSize size2, const CGFloat delta)
{
#define NOEQUAL(val) (fabs(size1.val - size2.val) > delta)
	if (NOEQUAL(width)) {
		return NO;
	}
	if (NOEQUAL(height)) {
		return NO;
	}
#undef NOEQUAL

	return YES;
}

