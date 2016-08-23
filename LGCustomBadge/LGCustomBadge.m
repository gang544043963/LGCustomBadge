//
//  LGCustomBadge.m
//  LGCustomBadge
//
//  Created by ligang on 16/8/18.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "LGCustomBadge.h"

@interface LGCustomBadge()

@property(nonatomic, strong) UIFont *textFont;
@end

@implementation LGCustomBadge

CGFloat const badgeHeight = 20;

- (LGCustomBadge *) initBadgeWithString:(NSString *)badgeString {
	self = [super initWithFrame:CGRectMake(0, 0, badgeHeight, badgeHeight)];
	if (self) {
		self.backgroundColor = [UIColor redColor];
		self.text = badgeString;
		self.font = self.textFont = [UIFont fontWithName:@"HelveticaNeue-Medium" size:13];
		self.textColor = [UIColor whiteColor];
		self.textAlignment = NSTextAlignmentCenter;
		self.layer.cornerRadius = badgeHeight/2;
		self.layer.masksToBounds = YES;
	}
	return self;
}

- (void)setBadgeString:(NSString *)badgeString {
	_badgeString = badgeString;
	self.text = badgeString;
	CGSize retValue;
	CGFloat rectWidth, rectHeight;
	NSDictionary *fontAttr = @{ NSFontAttributeName : self.textFont };
	CGSize stringSize = [badgeString sizeWithAttributes:fontAttr];
	if ([badgeString length]>=2) {
		rectWidth = 15 + stringSize.width;
		rectHeight = badgeHeight;
		retValue = CGSizeMake(rectWidth, rectHeight);
	} else {
		retValue = CGSizeMake(badgeHeight, badgeHeight);
	}
	self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, retValue.width, retValue.height);
}

@end
