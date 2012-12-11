//
//  DSBarChart.m
//  DSBarChart
//
//  Created by DhilipSiva Bijju on 31/10/12.
//  Copyright (c) 2012 Tataatsu IdeaLabs. All rights reserved.
//

#import "DSBarChart.h"

@implementation DSBarChart
@synthesize color,numberOfBars, maxLen, refs;

-(DSBarChart *)initWithFrame:(CGRect)frame
                       color:(UIColor *)theColor
                  references:(NSArray *)references
               andDictionary:(NSDictionary *)dictionary
{
    self = [super initWithFrame:frame];
    if (self) {
        self.color = theColor;
        self.dict = dictionary;
        self.refs = references;
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
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, self.color.CGColor);
    float LBL_HEIGHT = 20.0f;
    for (int barCount = 0; barCount < [self.dict count]; barCount++) {
        float iLen = [[self.dict objectForKey:[NSString stringWithFormat:@"%d", barCount]] floatValue];
        float x = barCount * (rectWidth);
        float height = iLen * rect.size.height / self.maxLen;
        if (height==0.0f) height = 1.0f;
        float y = rect.size.height - height - LBL_HEIGHT;
        CGRect barRect = CGRectMake(barCount + x, y, rectWidth, height);
        
        //Value Lablel.
        if ((int)iLen != 0) {
            UILabel *valLbl = [[UILabel alloc] initWithFrame:CGRectMake(barCount + x, barRect.origin.y, rectWidth, LBL_HEIGHT)];
            valLbl.text = [NSString stringWithFormat:@"%d", (int)iLen];
            valLbl.textColor = [UIColor redColor];
            [valLbl setTextAlignment:NSTextAlignmentCenter];
            valLbl.adjustsFontSizeToFitWidth = TRUE;
            valLbl.adjustsLetterSpacingToFitWidth = TRUE;
            valLbl.backgroundColor = [UIColor clearColor];
            [self addSubview:valLbl];
        }
        
        //Reference Label.
        UILabel *lblRef = [[UILabel alloc] initWithFrame:CGRectMake(barCount + x, rect.size.height - LBL_HEIGHT, rectWidth, LBL_HEIGHT)];
        lblRef.text = [refs objectAtIndex:barCount];
        lblRef.textColor = self.color;
        [lblRef setTextAlignment:NSTextAlignmentCenter];
        lblRef.adjustsFontSizeToFitWidth = TRUE;
        lblRef.adjustsLetterSpacingToFitWidth = TRUE;
        lblRef.backgroundColor = [UIColor clearColor];
        [self addSubview:lblRef];
        
        
        CGContextFillRect(context, barRect);
        
        
    }
}


@end
