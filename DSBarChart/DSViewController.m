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
                          [NSNumber numberWithInt:30], @"0",
                          [NSNumber numberWithInt:40], @"1",
                          [NSNumber numberWithInt:20], @"2",
                          [NSNumber numberWithInt:56], @"3",
                          [NSNumber numberWithInt:70], @"4",
                          [NSNumber numberWithInt:34], @"5",
                          [NSNumber numberWithInt:43], @"6",
                          nil];
    NSArray *refs = [NSArray arrayWithObjects:@"M", @"Tu", @"W", @"Th", @"F", @"Sa", @"Su", nil];
    DSBarChart *chrt = [[DSBarChart alloc] initWithFrame:ChartView.bounds
                                                   color:[UIColor greenColor]
                                              references:refs
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
