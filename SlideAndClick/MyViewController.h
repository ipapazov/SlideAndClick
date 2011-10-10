//
//  MyViewController.h
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController{
    NSArray *colors;
    UILabel *myLabel;
}

//Properties for class MyViewControllers
@property (nonatomic, retain) NSArray *colors;
@property (nonatomic, retain) UILabel *myLabel; 

@end
