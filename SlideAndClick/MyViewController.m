//
//  MyViewController.m
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController
@synthesize colors;
@synthesize myLabel;
@synthesize mainView;

- (void)dealloc{
    [colors dealloc];
    [myLabel dealloc];
    [super dealloc];
}

-(id)init 
{
    self = [super init];
    //NSLog(@"Init ViewController");
    if(self){
    colors = [[NSArray alloc]initWithObjects:[UIColor blueColor],
              [UIColor redColor], [UIColor yellowColor], [UIColor brownColor],[UIColor greenColor], nil];
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    //NSLog(@"In loadView method");
    
    //Create mainView
    self.mainView = [[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame]autorelease];
    self.mainView.backgroundColor = [UIColor lightGrayColor];
    self.view = mainView;
    
    //Create UILabel
    myLabel = [[UILabel alloc] initWithFrame: CGRectMake(0, 400, 320, 60)];
    [myLabel setTextAlignment:UITextAlignmentCenter];
    [myLabel setTextColor:[UIColor blackColor]];
    [myLabel setBackgroundColor:[UIColor blueColor]];
    [myLabel setText:@"Page 0"];
    
    [mainView addSubview: myLabel];
    [myLabel release];
    
    //Create UIScrollView
    UIScrollView *myScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0,0,320,400)];
    myScroll.contentSize = CGSizeMake(1600,400);
    //move the screen one page in the direction of scrolling
    myScroll.pagingEnabled = YES;
    [mainView addSubview:myScroll];
    [myScroll release];
    
    //Create 5 UIButtons. One for each page
    UIButton *button;
    int x=50;
    for(int i=0; i<5; i++)
    {
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.tag = i;
        button.frame = CGRectMake(x, 150, 220, 50);
        x+=320;
        [button setTitle:[NSString stringWithFormat:@"Click Button"]forState:UIControlStateNormal];
        [button addTarget:self action:@selector(touchEvent:) forControlEvents:UIControlEventTouchDown];
        [myScroll addSubview:button];
        
    }
}

 -(void)touchEvent:(id)sender{
 //NSLog(@"Touched button with tag %d:", [sender tag]);

 //Just so we have the right page number    
UIButton *button = (UIButton *)sender;
int page = [sender tag]+1;
     
 //Update the UILabel's text and background color    
 myLabel.text = [NSString stringWithFormat:@"Page %d", page];
 //myLabel.backgroundColor = [self.colors objectAtIndex:[sender tag]];
 myLabel.backgroundColor = [self.colors objectAtIndex:[button tag]];
 }

@end
