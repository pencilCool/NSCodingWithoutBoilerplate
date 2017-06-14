//
//  Foo.h
//  NSCodingWithoutBoilerplate
//
//  Created by pencilCool on 2017/6/14.
//  Copyright © 2017年 pencilCool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject <NSCoding>
@property (nonatomic, assign) NSInteger property1;
@property (nonatomic, assign) BOOL      property2;
@property (nonatomic, copy  ) NSString* property3;
@end
