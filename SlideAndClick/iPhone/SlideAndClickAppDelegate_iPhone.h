//
//  SlideAndClickAppDelegate_iPhone.h
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "SlideAndClickAppDelegate.h"
@class MyViewController;

@interface SlideAndClickAppDelegate_iPhone : SlideAndClickAppDelegate{
    MyViewController *myViewController;
}

@property (nonatomic, retain) MyViewController *myViewController;
@end

