//
//  ViewController.m
//  Class-5
//
//  Created by ZhangDong on 2018/11/30.
//  Copyright © 2018 pptv. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"1......");
    Person *person = [[[Person alloc] init] autorelease];
    NSLog(@"%@",[NSRunLoop mainRunLoop]);
//    kCFRunLoopBeforeWaiting;
    NSLog(@"kCFRunLoopEntry>>:%ld",kCFRunLoopEntry);
    NSLog(@"kCFRunLoopBeforeWaiting>>:%ld",kCFRunLoopBeforeWaiting);
    NSLog(@"kCFRunLoopExit>>:%ld",kCFRunLoopExit);
    
    //128+32 = 160;
    
//    NSLog(@"2......");
}


/*
 observers = (
 "<CFRunLoopObserver 0x600002058be0 [0x10ec2cb68]>{valid = Yes, activities = 0x1, repeats = Yes, order = -2147483647, callout = _wrapRunLoopWithAutoreleasePoolHandler (0x11181a1b1), context = <CFArray 0x600001f11020 [0x10ec2cb68]>{type = mutable-small, count = 1, values = (\n\t0 : <0x7fd008802058>\n)}}",

 "<CFRunLoopObserver 0x600002058dc0 [0x10ec2cb68]>{valid = Yes, activities = 0xa0, repeats = Yes, order = 2147483647, callout = _wrapRunLoopWithAutoreleasePoolHandler (0x11181a1b1), context = <CFArray 0x600001f11020 [0x10ec2cb68]>{type = mutable-small, count = 1, values = (\n\t0 : <0x7fd008802058>\n)}}"
 ),
 
 */


@end
