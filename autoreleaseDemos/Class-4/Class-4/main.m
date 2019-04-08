//
//  main.m
//  Class-4
//
//  Created by ZhangDong on 2018/11/30.
//  Copyright © 2018 pptv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

extern void _objc_autoreleasePoolPrint(void);


int main(int argc, const char * argv[]) {
    @autoreleasepool {// p1 = push();
        
        
        Person *person1 = [[[Person alloc] init] autorelease];
        Person *person2 = [[[Person alloc] init] autorelease];
        
        
        @autoreleasepool {// p2 = push();
            
            Person *person3 = [[[Person alloc] init] autorelease];
            Person *person4 = [[[Person alloc] init] autorelease];
            
            
            
            @autoreleasepool {// p2 = push();
                
                Person *person5 = [[[Person alloc] init] autorelease];
                Person *person6 = [[[Person alloc] init] autorelease];
                
                for (int i = 0; i< 1000; i++) {//8*1000
                    
                    Person *person7 = [[[Person alloc] init] autorelease];
                }
                
                _objc_autoreleasePoolPrint();
                
            }
            
        }//pop(p2)
        
        
    }//pop(p1)
    
    
//    _objc_autoreleasePoolPrint();
    
    return 0;
}


/*
 struct __AtAutoreleasePool {
 __AtAutoreleasePool() {  //构造函数
    atautoreleasepoolobj = objc_autoreleasePoolPush();
 }
 ~__AtAutoreleasePool() {   //析构函数
    objc_autoreleasePoolPop(atautoreleasepoolobj);
 }
 
 
 void * atautoreleasepoolobj;
 };
 */
