//
//  UIWebView_MetaParserTests.m
//  UIWebView+MetaParserTests
//
//  Created by Hirose Tatsuya on 2013/09/15.
//  Copyright (c) 2013年 Tatyusa. All rights reserved.
//

#import "UIWebView_MetaParserTests.h"
#import "UIWebView+MetaParser.h"

@implementation UIWebView_MetaParserTests

- (void)testMetaParser
{
    UIWebView *webView = [[UIWebView alloc] init];
    [webView setDelegate:self];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]];
    
    do {
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:.1]];
    } while (webView.loading);
    
}


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSArray *meta = [webView getMetaData];
    STAssertTrue([meta count]>0, @"Can't get meta data properly.");
}

@end
