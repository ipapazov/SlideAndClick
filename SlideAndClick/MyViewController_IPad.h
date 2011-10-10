//
//  MyViewController_IPad.h
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/10/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController_IPad : UIViewController{
    NSArray *colors;
    UILabel *myLabel;
}

//Properties for class MyViewController_IPad
@property (nonatomic, retain) NSArray *colors;
@property (nonatomic, retain) UILabel *myLabel; 

@end