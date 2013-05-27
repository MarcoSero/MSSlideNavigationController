//
//  Created by marco on 25/05/13.
//
//
//


#import "UIView+ScreenShot.h"
#import "QuartzCore/QuartzCore.h"


@implementation UIView (ScreenShot)

+ (UIImage *)screenShotForView:(UIView *)view
{
  return [view screenShot];
}

- (UIImage *)screenShot
{
  UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0);
  [self.layer renderInContext:UIGraphicsGetCurrentContext()];
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return image;
}

@end