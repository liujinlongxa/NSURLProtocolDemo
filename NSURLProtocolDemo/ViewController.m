//
//  ViewController.m
//  NSURLProtocolDemo
//
//  Created by Liujinlong on 9/20/15.
//  Copyright © 2015 Jaylon. All rights reserved.
//

#import "ViewController.h"
@import WebKit;

@interface ViewController ()

@property (nonatomic, strong) WKWebView * webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.webView];
//    self.webView.delegate = self;
    NSURLRequest * req = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    [self.webView loadRequest:req];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
