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
    NSArray *vals = [NSArray arrayWithObjects:
                    [NSNumber numberWithInt:30],
                    [NSNumber numberWithInt:40],
                    [NSNumber numberWithInt:20],
                    [NSNumber numberWithInt:56],
                    [NSNumber numberWithInt:70],
                    [NSNumber numberWithInt:34],
                    [NSNumber numberWithInt:43],
                    nil];
    NSArray *refs = [NSArray arrayWithObjects:@"M", @"Tu", @"W", @"Th", @"F", @"Sa", @"Su", nil];
    DSBarChart *chrt = [[DSBarChart alloc] initWithFrame:ChartView.bounds
                                                   color:[UIColor greenColor]
                                              references:refs
                                               andValues:vals];
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
