//
//  ViewController.m
//  IS-prac5
//
//  Created by Chida Mitsuhiro on 13/12/08.
//  Copyright (c) 2013年 Chida Mitsuhiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)IS_prac5_14:(id)sender
{
    NSDate *today =[NSDate date];
    NSLog(@"%@",today);
}

- (IBAction)IS_prac5_16:(id)sender
{
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy年MM月dd日 HH:mm"];
    [formatter setLocale:[NSLocale systemLocale]];
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    NSDate *theDay=[formatter dateFromString:@"2013年12月7日 18:00"];
    NSLog(@"%@",theDay);
    NSLocale *locale=[NSLocale currentLocale];
    NSLog(@"%@",[theDay descriptionWithLocale:locale]);
    NSLog(@"%@",[formatter stringFromDate:theDay]);
}

- (IBAction)IS_prac5_17:(id)sender
{
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy.MM.dd"];
    NSDate *theDay=[formatter dateFromString:@"2011.3.11"];
    NSDate *today =[NSDate date];
    NSInteger days=[today timeIntervalSinceDate:theDay]/(60*60*24);
    NSLog(@"東日本大震災から%d日経過",days);
}

- (IBAction)IS_prac5_18:(id)sender
{
    NSString *school=@"IPU情報システム塾",*course=@"iOSアプリ開発";
    NSLog(@"%@",[NSString stringWithFormat:@"%@%@",school,course]);
}

- (IBAction)IS_prac5_19:(id)sender
{
    NSString *school=@"IPU情報システム塾",*course=@"iOSアプリ開発";
    NSLog(@"%@",[school stringByAppendingString:course]);
}

- (IBAction)IS_prac5_20:(id)sender
{
    NSString *string=@"IPU情報システム塾iOSアプリ開発";
    NSMutableString *result=[NSMutableString string];
    [result setString:@"\n"];
    int len=[string length];
    for (int i=0; i<len; i++) {
        [result appendFormat:@"%@\n",[string substringWithRange:NSMakeRange(i,1)]];
    }
    NSLog(@"%@",result);
}

- (IBAction)IS_prac5_21:(id)sender
{
    NSString *srcString=@"IPU情報システム塾iOSアプリ開発";
    [self search:@"iOS" srcString:srcString];
    [self search:@"MacOS" srcString:srcString];
}

- (int)search:(NSString*)aString srcString:(NSString*)sString
{
    NSRange range=[sString rangeOfString:aString];
    if (range.location == NSNotFound) {
        NSLog(@"%@は含まれていない",aString);
    }else {
        NSLog(@"%@は%d文字目",aString,range.location);
    }
    return range.location;
}

- (IBAction)IS_prac5_22:(id)sender
{
    NSString *srcString=@"IPU情報システム塾iOSアプリ開発";
    NSString *searchString=@"iOS";
    NSString *replaceString=@"MacOS";
    NSLog(@"%@",[srcString stringByReplacingOccurrencesOfString:searchString withString:replaceString]);
}

@end
