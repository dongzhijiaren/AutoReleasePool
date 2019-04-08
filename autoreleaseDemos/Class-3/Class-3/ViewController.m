//
//  ViewController.m
//  Class-3
//
//  Created by ZhangDong on 2018/11/29.
//  Copyright © 2018 pptv. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSLog(@"1.....>");
    Person *person = [[[Person alloc] init] autorelease];
    
//    NSLog(@"2.....>");
    
    NSLog(@"%@",[NSRunLoop mainRunLoop]);
    
    NSLog(@"%ld,%ld,%ld",kCFRunLoopEntry,kCFRunLoopBeforeWaiting,kCFRunLoopExit);
    
}

/*
 observers = (
 "<CFRunLoopObserver 0x600000120b40 [0x106df3b68]>{valid = Yes, activities = 0x1, repeats = Yes, order = -2147483647, callout = _wrapRunLoopWithAutoreleasePoolHandler (0x1099e11b1), context = <CFArray 0x600003e6c8d0 [0x106df3b68]>{type = mutable-small, count = 1, values = (\n\t0 : <0x7fc141805058>\n)}}",
 
 "<CFRunLoopObserver 0x600000120dc0 [0x106df3b68]>{valid = Yes, activities = 0xa0, repeats = Yes, order = 2147483647, callout = _wrapRunLoopWithAutoreleasePoolHandler (0x1099e11b1), context = <CFArray 0x600003e6c8d0 [0x106df3b68]>{type = mutable-small, count = 1, values = (\n\t0 : <0x7fc141805058>\n)}}"
 ),

 */


@end
