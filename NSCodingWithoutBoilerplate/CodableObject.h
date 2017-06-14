//
//  Foo2.h
//  NSCodingWithoutBoilerplate
//
//  Created by pencilCool on 2017/6/14.
//  Copyright © 2017年 pencilCool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CodableObject : NSObject<NSCoding>
- (NSArray *)propertyNames;
@end
