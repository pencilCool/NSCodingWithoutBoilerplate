//
//  ViewController.m
//  NSCodingWithoutBoilerplate
//
//  Created by pencilCool on 2017/6/14.
//  Copyright © 2017年 pencilCool. All rights reserved.
//

#import "ViewController.h"
#import "Foo.h"

#import "Foo2.h"
#import "subClassOfFoo2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Foo *someFoo = [[Foo alloc] init];
    NSData *someData = [NSKeyedArchiver archivedDataWithRootObject:someFoo];
    [[NSUserDefaults standardUserDefaults] setObject:someData forKey:@"someData"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
    Foo2 *someFoo2 = [Foo2 new];
    NSLog(@"someFoo2.propertyNames = %@",someFoo2.propertyNames);
    
    subClassOfFoo2 *sub = [subClassOfFoo2 new];
    NSLog(@"subClassOfFoo2.propertyNames = %@",sub.propertyNames);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
