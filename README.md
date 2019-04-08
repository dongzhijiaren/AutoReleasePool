----------


# 自动释放池(AutoReleasePool)


> * 自动释放池的主要底层数据结构是什么？
> * 自动释放池是什么时候进行释放的？


------

## 1.1 自动释放池的底层源码解析

- 自动释放池的主要底层数据结构是：__AtAutoreleasePool、AutoreleasePoolPage
- 调用了autorelease的对象最终都是通过AutoreleasePoolPage对象来管理的
- 源码分析

clang重写@autoreleasepool
objc4源码：NSObject.mm

![avatar](https://raw.githubusercontent.com/dongzhijiaren/AutoReleasePool/master/images/1.png)


## 1.2 AutoreleasePoolPage的底层结构

- 每个AutoreleasePoolPage对象占用4096字节内存，除了用来存放它内部的成员变量，剩下的空间用来存放autorelease对象的地址
- 所有的AutoreleasePoolPage对象通过双向链表的形式连接在一起

![avatar](https://raw.githubusercontent.com/dongzhijiaren/AutoReleasePool/master/images/2.png)

## 1.3 POOL_BOUNDARY

- 调用push方法会将一个POOL_BOUNDARY入栈，并且返回其存放的内存地址
- 调用pop方法时传入一个POOL_BOUNDARY的内存地址，会从最后一个入栈的对象开始发送release消息，直到遇到这个POOL_BOUNDARY
- id *next指向了下一个能存放autorelease对象地址的区域  

## 2.1 自动释放池的释放情况

- 可以通过以下私有函数来查看自动释放池的情况 
```ObjectiveC
extern void _objc_autoreleasePoolPrint(void);
```

## 3.1 Runloop和Autorelease的关系

> *iOS在主线程的Runloop中注册了2个Observer
第1个Observer监听了kCFRunLoopEntry事件，会调用objc_autoreleasePoolPush()
第2个Observer
监听了kCFRunLoopBeforeWaiting事件，会调用objc_autoreleasePoolPop()、objc_autoreleasePoolPush()
监听了kCFRunLoopBeforeExit事件，会调用objc_autoreleasePoolPop()


---






