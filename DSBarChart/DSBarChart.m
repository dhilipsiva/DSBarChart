//
//  DSBarChart.m
//  DSBarChart
//
//  Created by DhilipSiva Bijju on 31/10/12.
//  Copyright (c) 2012 Tataatsu IdeaLabs. All rights reserved.
//

#import "DSBarChart.h"

@implementation DSBarChart
@synthesize color,numberOfBars, maxLen, refs, vals;

-(DSBarChart *)initWithFrame:(CGRect)frame
                       color:(UIColor *)theColor
                  references:(NSArray *)references
                   andValues:(NSArray *)values
{
    self = [super initWithFrame:frame];
    if (self) {
        self.color = theColor;
        self.vals = values;
        self.refs = references;
    }
    return self;
}

-(void)calculate{
    self.numberOfBars = [self.vals count];
    for (NSNumber *val in vals) {
        float iLen = [val floatValue];
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
    for (int barCount = 0; barCount < self.numberOfBars; barCount++) {
        float iLen = [[vals objectAtIndex:barCount] floatValue];
        float x = barCount * (rectWidth);
        float height = iLen * rect.size.height / self.maxLen;
        if (height==0.0f) height = 1.0f;
        float y = rect.size.height - height - LBL_HEIGHT;
        CGRect barRect = CGRectMake(barCount + x, y, rectWidth, height);
        
        //Value Lablel.
        if ((int)iLen != 0) {
            UILabel *valLbl = [[UILabel alloc] initWithFrame:CGRectMake(barCount + x, barRect.origin.y, rectWidth, LBL_HEIGHT)];
            valLbl.text = [NSString stringWithFormat:@"%d", (int)iLen];
            valLbl.adjustsFontSizeToFitWidth = TRUE;
            valLbl.adjustsLetterSpacingToFitWidth = TRUE;
            valLbl.textColor = [UIColor redColor];
            [valLbl setTextAlignment:NSTextAlignmentCenter];
            valLbl.backgroundColor = [UIColor clearColor];
            [self addSubview:valLbl];
        }
        
        //Reference Label.
        UILabel *lblRef = [[UILabel alloc] initWithFrame:CGRectMake(barCount + x, rect.size.height - LBL_HEIGHT, rectWidth, LBL_HEIGHT)];
        lblRef.text = [refs objectAtIndex:barCount];
        lblRef.adjustsFontSizeToFitWidth = TRUE;
        lblRef.adjustsLetterSpacingToFitWidth = TRUE;
        lblRef.textColor = self.color;
        [lblRef setTextAlignment:NSTextAlignmentCenter];
        lblRef.backgroundColor = [UIColor clearColor];
        [self addSubview:lblRef];
        
        
        CGContextFillRect(context, barRect);
        

    }
}


@end
