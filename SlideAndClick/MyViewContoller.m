//
//  MyViewContoller.m
//  SlideAndClick
//
//  Created by Hristo Papazov on 10/9/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "MyViewContoller.h"

@implementation MyViewContoller
@synthesize colors;
@synthesize myLabel;
@synthesize button;

- (void)dealloc{
    [myLabel dealloc];
    [button dealloc];
    [super dealloc];
}

-(id)init 
{
    //NSArray *colors = nil;
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
    NSLog(@"In loadView method");
    
    //Create mainView
    UIView *mainView ;
    mainView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    mainView.backgroundColor = [UIColor brownColor];
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
    myScroll.pagingEnabled = YES;
    [mainView addSubview:myScroll];
    [myScroll release];
    
    //Create 5 UIButtons. One for each page
    int x=50;
    for(int i=0; i<5; i++)
    {
        
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.tag = i;
        button.frame = CGRectMake(x, 150, 220, 50);
        x+=320;
        [button setTitle:[NSString stringWithFormat:@"Click Button %d", i+1]forState:UIControlStateNormal];
        [button addTarget:self action:@selector(touchEvent:) forControlEvents:UIControlEventTouchDown];
        [myScroll addSubview:button];
        
    }
}

 -(void)touchEvent:(id)sender{
 NSLog(@"Button touched");
 myLabel.text = [NSString stringWithFormat:@"Button %d clicked", button.tag];
 myLabel.backgroundColor = [self.colors objectAtIndex:button.tag];
 }
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/
@end
