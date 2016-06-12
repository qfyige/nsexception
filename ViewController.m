//
//  ViewController.m
//  nsexception
//
//  Created by pencho on 16/6/12.
//  Copyright © 2016年 litong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *arr = [[NSArray alloc] init];
    NSException *exception = [[NSException alloc] initWithName:@"number is more than arr number" reason:@"error" userInfo:nil];
    @try {
        [arr objectAtIndex:1];
        //如果上面不崩溃 会抛出异常
        @throw exception;
    } @catch (NSException *exception) {
        //此处可以抓捕到上面的异常
        NSLog(@"123%@",exception.reason);
    } @finally {
        NSLog(@"没崩溃");
    }
    NSLog(@"没崩溃 go go go");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
