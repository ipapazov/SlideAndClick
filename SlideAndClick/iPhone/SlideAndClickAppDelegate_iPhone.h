//
//  SlideAndClickAppDelegate_iPhone.h
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "SlideAndClickAppDelegate.h"
@class MyViewContoller;

@interface SlideAndClickAppDelegate_iPhone : SlideAndClickAppDelegate{
    MyViewContoller *myViewController;
}

@property (nonatomic, retain) MyViewContoller *myViewController;
@end

