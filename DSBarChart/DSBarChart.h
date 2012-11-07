//
//  DSBarChart.h
//  DSBarChart
//
//  Created by DhilipSiva Bijju on 31/10/12.
//  Copyright (c) 2012 Tataatsu IdeaLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSBarChart : UIView
-(DSBarChart * )initWithFrame:(CGRect)frame
                        color:(UIColor*) color
                andDictionary:(NSDictionary *)dictionary;
@property (atomic) int numberOfBars;
@property (atomic) float maxLen;
@property (atomic, strong) UIColor *color;
@property (atomic) NSDictionary* dict;
@end
