//
//  MyViewContoller.h
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewContoller : UIViewController{
    NSArray *colors;
    UILabel *myLabel;
    UIButton *button;
}
@property (nonatomic, retain) NSArray *colors;
@property (nonatomic, retain) UILabel *myLabel; 
@property (nonatomic, retain) UIButton *button;

@end
