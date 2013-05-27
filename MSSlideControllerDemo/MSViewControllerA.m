//
//  MSViewControllerA.m
//  MSSlideControllerDemo
//
//  Created by Marco Sero on 05/25/13.
//  Copyright (c) 2013 Marco Sero. All rights reserved.
//

#import "MSViewControllerA.h"

@interface MSViewControllerA ()

@end

@implementation MSViewControllerA

- (void)viewDidLoad
{
  [super viewDidLoad];

  UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 33)];
  [button1 setTitle:@"A" forState:UIControlStateNormal];
  [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  UIView *view1 = [[UIView alloc] initWithFrame:button1.frame];
  [view1 addSubview:button1];
  UIBarButtonItem *barButtonItem1 = [[UIBarButtonItem alloc] initWithCustomView:view1];

  UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 33)];
  [button2 setTitle:@"B" forState:UIControlStateNormal];
  [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  UIView *view2 = [[UIView alloc] initWithFrame:button2.frame];
  [view2 addSubview:button2];
  UIBarButtonItem *barButtonItem2 = [[UIBarButtonItem alloc] initWithCustomView:view2];

  UIButton *button3 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 33)];
  [button3 setTitle:@"C" forState:UIControlStateNormal];
  [button3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  UIView *view3 = [[UIView alloc] initWithFrame:button3.frame];
  [view3 addSubview:button3];
  UIBarButtonItem *barButtonItem3 = [[UIBarButtonItem alloc] initWithCustomView:view3];

  UIButton *button4 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 33)];
  [button4 setTitle:@"D" forState:UIControlStateNormal];
  [button4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  UIView *view4 = [[UIView alloc] initWithFrame:button4.frame];
  [view4 addSubview:button4];
  UIBarButtonItem *barButtonItem4 = [[UIBarButtonItem alloc] initWithCustomView:view4];

  self.navigationItem.leftBarButtonItems = @[barButtonItem1, barButtonItem2];
  self.navigationItem.rightBarButtonItems = @[barButtonItem3, barButtonItem4];

}

@end