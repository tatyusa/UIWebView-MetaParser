#UIWebView+MetaParser
`UIWebView+MetaParse` is a category of `UIWebView` to parse meta tags in HTML which UIWebView has.

##How To Use
Once UIWebView loaded HTML resources, you can use `getMetaData` message and get the meta data as NSArray.

	- (void)webViewDidFinishLoad:(UIWebView *)webView
	{
		NSArray *meta = [webView getMetaData];
		NSLog(@"%@",meta);
	}

	###Console
	(
        {
        	charset = "utf-8";
    	},
        {
        	content = "IE=edge";
        	"http-equiv" = "X-UA-Compatible";
    	}
    )

## MIT License
Copyright (C) 2013 Tatsuya Hirose

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
