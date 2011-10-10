//
//  SlideAndClickAppDelegate_iPad.m
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "SlideAndClickAppDelegate_iPad.h"
#import "MyViewController_IPad.h"

@implementation SlideAndClickAppDelegate_iPad
@synthesize myViewController=_myViewController;

- (void)dealloc{
    [_myViewController dealloc];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    MyViewController_IPad *aViewController = [[MyViewController_IPad alloc]init];
    self.myViewController = aViewController;
    self.window.rootViewController = self.myViewController;
    [self.window makeKeyAndVisible];
    
    [aViewController release];
    return YES;
}
@end