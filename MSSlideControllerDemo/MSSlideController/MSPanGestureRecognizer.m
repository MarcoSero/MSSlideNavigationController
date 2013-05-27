// MSPanGestureRecognizer.m
//
// Copyright (c) 2013 Marco Sero (http://www.marcosero.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.


#import "MSPanGestureRecognizer.h"

@implementation MSPanGestureRecognizer

- (MSPanDirection)direction
{
  CGPoint velocity = [self velocityInView:self.view.window];
  if (fabs(velocity.y) > fabs(velocity.x)) {
    if (velocity.y > 0) {
      return MSPanDirectionUp;
    }
    else {
      return MSPanDirectionDown;
    }
  }
  else {
    if (velocity.x > 0) {
      return MSPanDirectionLeft;
    }
    else {
      return MSPanDirectionRight;
    }
  }
}

- (MSPanWay)way
{
  CGPoint velocity = [self velocityInView:self.view.window];
  if (fabs(velocity.y) > fabs(velocity.x)) {
    return MSPanWayVertical;
  }
  else {
    return MSPanWayHorizontal;
  }
}

@end
