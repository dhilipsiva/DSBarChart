//
//  DSViewController.m
//  DSBarChart
//
//  Created by DhilipSiva Bijju on 31/10/12.
//  Copyright (c) 2012 Tataatsu IdeaLabs. All rights reserved.
//

#import "DSViewController.h"
#import "DSBarChart.h"

@interface DSViewController ()

@end

@implementation DSViewController
@synthesize ChartView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          [NSNumber numberWithInt:30], @"a",
                          [NSNumber numberWithInt:40], @"b",
                          [NSNumber numberWithInt:20], @"c",
                          [NSNumber numberWithInt:56], @"d",
                          [NSNumber numberWithInt:70], @"e",
                          [NSNumber numberWithInt:34], @"f",
                          [NSNumber numberWithInt:43], @"g",
                          nil];
    DSBarChart *chrt = [[DSBarChart alloc] initWithFrame:ChartView.bounds
                                                   color:[[UIColor greenColor] CGColor]
                                           andDictionary:dict];
    chrt.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    chrt.bounds = ChartView.bounds;
    [ChartView addSubview:chrt];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
