//
//  main.m
//  runtimeTest
//
//  Created by caixiang on 2021/3/18.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//添加新的Target
//Xcode->File->New->Target,选择macOS->Command Line Tool

//为runtimeTest添加依赖，使用我们自己编译的动态库。
//Targets->runtimeTest->Build Phase->Target Dependencies，选择objc。选择完之后如下图
//runtimeTest->enable hardened runtime -> NO

// 重磅提示 调试工程很重要 源码直观就是爽
// ⚠️编译调试不能过: 请你检查以下几小点⚠️
// ①: enable hardened runtime -> NO
// ②: build phase -> denpendenice -> objc
// 爽了之后,还来一个 👍


//这个指令是gcc引入的，作用是允许程序员将最有可能执行的分支告诉编译器。
//这个指令的写法为：__builtin_expect(EXP, N)。 意思是：EXP==N的概率很大。
#define fastpath(x) (__builtin_expect(bool(x), 1))//x很可能为真
#define slowpath(x) (__builtin_expect(bool(x), 0))

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *person1 = [[Person alloc] init];
        
        Person *person2 = [[Person alloc] init];
    }
    return 0;
}
