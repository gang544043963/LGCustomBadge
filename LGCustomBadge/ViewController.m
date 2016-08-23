//
//  ViewController.m
//  LGCustomBadge
//
//  Created by ligang on 16/8/18.
//  Copyright © 2016年 LG. All rights reserved.
//

#import "ViewController.h"
#import "LGCustomBadge.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	LGCustomBadge *badge1 = [[LGCustomBadge alloc] initBadgeWithString:@"5"];
	UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(20, 50, 100, 50)];
	view1.backgroundColor = [UIColor grayColor];
	[self.view addSubview:view1];
	[view1 addSubview:badge1];
	
	LGCustomBadge *badge2 = [[LGCustomBadge alloc] initBadgeWithString:@""];
	UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(20, 110, 100, 50)];
	view2.backgroundColor = [UIColor grayColor];
	[self.view addSubview:view2];
	[view2 addSubview:badge2];
	badge2.badgeString = @"333";
	
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
