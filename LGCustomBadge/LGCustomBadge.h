//
//  LGCustomBadge.h
//  LGCustomBadge
//
//  Created by ligang on 16/8/18.
//  Copyright © 2016年 LG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LGCustomBadge : UILabel

@property (nonatomic, copy) NSString *badgeString;

- (LGCustomBadge *) initBadgeWithString:(NSString *)badgeString;

@end
