//
//  SlideAndClickAppDelegate_iPhone.m
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "SlideAndClickAppDelegate_iPhone.h"
#import "MyViewContoller.h"

@implementation SlideAndClickAppDelegate_iPhone
@synthesize myViewController=_myViewController;

- (void)dealloc{
    [_myViewController dealloc];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    MyViewContoller *aViewController = [[MyViewContoller alloc]init];
    self.myViewController = aViewController;
    self.window.rootViewController = self.myViewController;
    [self.window makeKeyAndVisible];
    
    [aViewController release];
    return YES;
}
@end
