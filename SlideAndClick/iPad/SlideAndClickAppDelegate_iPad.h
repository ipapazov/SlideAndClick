//
//  SlideAndClickAppDelegate_iPad.h
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "SlideAndClickAppDelegate.h"
@class MyViewController_IPad;

@interface SlideAndClickAppDelegate_iPad : SlideAndClickAppDelegate{
    MyViewController_IPad *myViewController;
}

@property (nonatomic, retain) MyViewController_IPad *myViewController;
@end