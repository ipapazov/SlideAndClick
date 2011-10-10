//
//  MyViewController_IPad.m
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/10/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "MyViewController_IPad.h"

@implementation MyViewController_IPad
@synthesize colors;
@synthesize myLabel;

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
    UIView *mainView ;
    mainView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    mainView.backgroundColor = [UIColor lightGrayColor];
    self.view = mainView;
    
    //Create UILabel
    myLabel = [[UILabel alloc] initWithFrame: CGRectMake(0, 900, 768, 124)];
    [myLabel setTextAlignment:UITextAlignmentCenter];
    [myLabel setTextColor:[UIColor blackColor]];
    [myLabel setBackgroundColor:[UIColor blueColor]];
    [myLabel setText:@"Page 0"];
    
    [mainView addSubview: myLabel];
    [myLabel release];
    
    //Create UIScrollView
    UIScrollView *myScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0,0,768,900)];
    myScroll.contentSize = CGSizeMake(3840,1024);
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
        button.frame = CGRectMake(x, 350, 668, 100);
        x+=768;
        [button setTitle:[NSString stringWithFormat:@"Click Button"]forState:UIControlStateNormal];
        [button addTarget:self action:@selector(touchEvent:) forControlEvents:UIControlEventTouchDown];
        [myScroll addSubview:button];
        
    }
}

-(void)touchEvent:(id)sender{
    //NSLog(@"Touched button with tag %d:", [sender tag]);
    
    //Just so we have the right page number    
    int page = [sender tag]+1;
    
    //Update the UILabel's text and background color    
    myLabel.text = [NSString stringWithFormat:@"Page %d", page];
    myLabel.backgroundColor = [self.colors objectAtIndex:[sender tag]];
}

@end
