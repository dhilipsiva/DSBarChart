//
//  DSBarChart.m
//  DSBarChart
//
//  Created by DhilipSiva Bijju on 31/10/12.
//  Copyright (c) 2012 Tataatsu IdeaLabs. All rights reserved.
//

#import "DSBarChart.h"

@implementation DSBarChart
@synthesize color,numberOfBars, maxLen;

-(DSBarChart *)initWithFrame:(CGRect)frame
                       color:(UIColor *)theColor
               andDictionary:(NSDictionary *)dictionary
{
    self = [super initWithFrame:frame];
    if (self) {
        self.color = theColor;
        self.dict = dictionary;
    }
    return self;
}

-(void)calculate{
    self.numberOfBars = [self.dict count];
    for (NSString *key in [self.dict allKeys]) {
        float iLen = [[self.dict valueForKey:key] floatValue];
        if (iLen > self.maxLen) {
            self.maxLen = iLen;
        }
    }
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [self calculate];
    float rectWidth = (float)(rect.size.width-(self.numberOfBars)) / (float)self.numberOfBars;
    int barCount = 0;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, self.color.CGColor);
    for (int i = 0; i < [self.dict count]; i++) {
        float iLen = [[self.dict objectForKey:[NSString stringWithFormat:@"%d", i]] floatValue];
        float x = barCount * (rectWidth);
        float height = iLen * rect.size.height / self.maxLen;
        float y;
        if (height==0) height = 1;
        y = rect.size.height - height;
        CGRect barRect = CGRectMake(barCount + x, y, rectWidth, height);
        CGContextFillRect(context, barRect);
        barCount+=1;
    }
}


@end
