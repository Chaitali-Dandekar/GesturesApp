//
//  ViewController.m
//  gestures app
//
//  Created by Student-003 on 31/10/17.
//  Copyright © 2017 chaitali. All rights reserved.
//

#import "ViewController.h"
CGSize original;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *doubleTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleDoubleTap)];
    [doubleTap setNumberOfTapsRequired:2];
    [self.myView addGestureRecognizer:doubleTap ];
//    [doubleTap release];
    
    UITapGestureRecognizer *singleTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlesingleTap)];
    [self.view addGestureRecognizer:singleTap];
    
    UISwipeGestureRecognizer *rightSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handlerightSwipe)];
    [rightSwipe setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:rightSwipe];
    
    UISwipeGestureRecognizer *leftSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleLeftSwipe)];
    [leftSwipe setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:leftSwipe];
    
     original=CGSizeMake( self.myView.frame.size.width, self.myView.frame.size.height);
//    (self.myView.frame.origin.x, self.myView.frame.origin.y, self.myView.frame.size.width, self.myView.frame.size.height);
    
}
-(void)handleDoubleTap
{
    if (original.width==self.myView.frame.size.width && original.height==self.myView.frame.size.height)
    {
         self.myView.frame=CGRectMake(self.myView.frame.origin.x, self.myView.frame.origin.x, self.myView.frame.size.width+10, self.myView.frame.size.height+10);
    }
    else
    {
       self.myView.frame=CGRectMake(self.myView.frame.origin.x, self.myView.frame.origin.x, self.myView.frame.size.width-10, self.myView.frame.size.height-10);
    }
   
//    [doubleTap 
   }
//[self.myView.setNumberOfTapsRequired==]
-(void)handlesingleTap
{
    self.view.backgroundColor=[UIColor redColor];
}
-(void)handlerightSwipe
{
   self.view.backgroundColor=[UIColor orangeColor];
}
-(void)handleLeftSwipe
{
    self.view.backgroundColor=[UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
