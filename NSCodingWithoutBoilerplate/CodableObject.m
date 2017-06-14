//
//  Foo2.m
//  NSCodingWithoutBoilerplate
//
//  Created by pencilCool on 2017/6/14.
//  Copyright © 2017年 pencilCool. All rights reserved.
//

#import "CodableObject.h"
@import ObjectiveC;

@implementation CodableObject

- (NSArray *)propertyNames {
    unsigned int propertyCount;
    objc_property_t *properties = class_copyPropertyList([self class], &propertyCount);
    NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:propertyCount];
    for (int i = 0; i < propertyCount; i++) {
        objc_property_t property = properties[i];
        const char *propertyName = property_getName(property);
        NSString *key = @(propertyName);
        [mutableArray addObject:key];
    }
    free(properties);
    return mutableArray;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [self init]))
    {
        // Loop through the properties
        for (NSString *key in [self propertyNames])
        {
            // Decode the property, and use the KVC setValueForKey: method to set it
            id value = [aDecoder decodeObjectForKey:key];
            [self setValue:value forKey:key];
        }
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    // Loop through the properties
    for (NSString *key in [self propertyNames])
    {
        // Use the KVC valueForKey: method to get the property and then encode it
        id value = [self valueForKey:key];
        [aCoder encodeObject:value forKey:key];
    }
}


@end
