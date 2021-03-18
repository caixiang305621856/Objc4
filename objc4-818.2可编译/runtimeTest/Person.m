//
//  Person.m
//  runtimeTest
//
//  Created by caixiang on 2021/3/18.
//

#import "Person.h"

@implementation Person

- (id)init {
    self =  [super init];
    if (self) {
        NSLog(@"init");
    }
    return self;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [super allocWithZone:zone];
}

@end
