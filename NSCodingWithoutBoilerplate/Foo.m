//
//  Foo.m
//  NSCodingWithoutBoilerplate
//
//  Created by pencilCool on 2017/6/14.
//  Copyright © 2017年 pencilCool. All rights reserved.
//

#import "Foo.h"





@implementation Foo

- (instancetype)init {
    if (self = [super init]) {
        _property1 = 1;
        _property2 = true;
        _property3 = @"foo";
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        _property1 = [[aDecoder decodeObjectForKey:@"property1"] integerValue];
        _property2 = [aDecoder decodeObjectForKey:@"property2"];
        _property3 = [aDecoder decodeObjectForKey:@"property3"];

    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeInteger:_property1 forKey:@"property1"];
    [aCoder encodeBool:_property2 forKey:@"property2"];
    [aCoder encodeObject:_property3 forKey:@"property3"];
}
@end
