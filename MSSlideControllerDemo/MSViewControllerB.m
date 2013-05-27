//
//  Created by marco on 25/05/13.
//
//
//


#import "MSViewControllerB.h"


@implementation MSViewControllerB

- (void)viewDidLoad
{
  [super viewDidLoad];

  UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 33)];
  [backButton setTitle:@"Back" forState:UIControlStateNormal];
  [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  [backButton addTarget:self action:@selector(popViewController) forControlEvents:UIControlEventTouchUpInside];
  UIView *view1 = [[UIView alloc] initWithFrame:backButton.frame];
  [view1 addSubview:backButton];
  UIBarButtonItem *barButtonItem1 = [[UIBarButtonItem alloc] initWithCustomView:view1];

  UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 33)];
  [button setTitle:@"E" forState:UIControlStateNormal];
  [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  UIView *view2 = [[UIView alloc] initWithFrame:button.frame];
  [view2 addSubview:button];
  UIBarButtonItem *barButtonItem2 = [[UIBarButtonItem alloc] initWithCustomView:view2];

  self.navigationItem.leftBarButtonItem = barButtonItem1;
  self.navigationItem.rightBarButtonItem = barButtonItem2;
}

- (void)popViewController
{
  [self.navigationController popViewControllerAnimated:YES];
}

@end