```                                                                                   
______  ___________            _____ _                _   
|  _  \/  ___| ___ \          /  __ \ |              | |  
| | | |\ `--.| |_/ / __ _ _ __| /  \/ |__   __ _ _ __| |_ 
| | | | `--. \ ___ \/ _` | '__| |   | '_ \ / _` | '__| __|
| |/ / /\__/ / |_/ / (_| | |  | \__/\ | | | (_| | |  | |_ 
|___/  \____/\____/ \__,_|_|   \____/_| |_|\__,_|_|   \__|
```

A simple Objective-C Bar Chart / Histogram library.

Latest Version: 0.4.0

# Installation

## Install manually

Simply click [here](https://github.com/dhilipsiva/DSBarChart/archive/master.zip) to download the file and add it into your project directory.

## Install using git

1. Simply type `git clone git@github.com:dhilipsiva/DSBarChart.git` to clone this repo or `git submodule add git@github.com:dhilipsiva/DSBarChart.git` into your project folder.

## Install using CocoaPods

DSBarChart is also avilable on [CocoaPods](http://cocoapods.org/?q=dhilipsiva). To Install using CocoaPods, follow the instructions:

1. Open your Podfile
2. Append `pod 'DSBarChart',  '~> 0.4.0'`
3. Type `pod install` on terminal
4. Open your `.xcworkspace` file.

# Sample Usage

```objective-c
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
```

# Output of the sample code above

<img src="https://raw.github.com/dhilipsiva/DSBarChart/master/DSBarChart.png"
 alt="DSBarChart" title="A simple objective-c Bar Chart / Histogram library." align="canter"/>
  
# Who is using DSBarChart

1. [ReWire](http://www.rewireapp.com/)

If you are using DSBarChart, please feel free to edit this list.

# Credits

1. [DhilipSiva](https://github.com/dhilipsiva)
2. [Gautam Jeyaraman](https://github.com/gautamjeyaraman)

# Support

* Email:     dhilipsiva[at]gmail.com
* Groups:    [Google Groups](https://groups.google.com/forum/?fromgroups#!forum/dsbarchart)

# Final Note

As like many other developers, I would be happy if you give me an attribution if you use this. Drop a mail. Or buy me something from my wishlist:

1. [Amazon](http://www.amazon.com/registry/wishlist/2E251JJU12H5T)
2. [Flipkart](http://www.flipkart.com/wishlist/dhilipsiva)
