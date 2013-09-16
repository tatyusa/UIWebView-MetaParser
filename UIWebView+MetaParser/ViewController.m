//
//  ViewController.m
//  UIWebView+MetaParser
//
//  Created by Hirose Tatsuya on 2013/09/15.
//  Copyright (c) 2013年 Tatyusa. All rights reserved.
//

#import "ViewController.h"
#import "UIWebView+MetaParser.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect frame0 = CGRectMake(0, 0, [[UIScreen mainScreen] applicationFrame].size.width, [[UIScreen mainScreen] applicationFrame].size.height/2);
    UIWebView *webView = [[UIWebView alloc] initWithFrame:frame0];
    [webView setDelegate:self];
    [self.view addSubview:webView];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]];
}

#pragma mark UIWebViewDelegateMethod

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSArray *meta = [webView getMetaData];
    
    CGRect frame1 = CGRectMake(0, [[UIScreen mainScreen] applicationFrame].size.height/2, [[UIScreen mainScreen] applicationFrame].size.width, [[UIScreen mainScreen] applicationFrame].size.height/2);
    UILabel *resultLabel = [[UILabel alloc] initWithFrame:frame1];
    [resultLabel setNumberOfLines:0];
    [resultLabel setFont:[UIFont systemFontOfSize:12]];
    [resultLabel setText:[meta description]];
    [self.view addSubview:resultLabel];
}

@end
