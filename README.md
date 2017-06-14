# NSCodingWithoutBoilerplate

一个编写NSCoding 相关代码时候，可以用来偷懒的工具类。



版本一的问题是：

1. 属性列表不能直接获取到父类的属性。

2. 有些属性不支持NSCode
	* 没有对应的ivar，是只读的。不能使用setValueForKey
	* 有ivar，是readonly，但ivar 和属性名字不匹配，也会出错。
	* 如果没有ivar，可读写，那反正是计算属性，就没必要存了。

	> 总之我们就是要处理那些，有ivar，且ivar 和属性名字匹配的属性。
	
3.  不是每一个属性是不支持codable，比如结构体等

4.  有些属性我们不需要存档
	* 定时器
	* 一些为了追踪运行时状态的标志位。


修复后问题1，2 后的输出结果

```
2017-06-14 11:08:47.829 NSCodingWithoutBoilerplate[9170:951922] someFoo2.propertyNames = (
    property1,
    property2,
    property3
)
2017-06-14 11:08:47.829 NSCodingWithoutBoilerplate[9170:951922] subClassOfFoo2.propertyNames = (
    property4,
    property5,
    property6,
    property1,
    property2,
    property3
)	
```

问题3没有很好的解决方案，我们尽量不往类里面添加unauto-codeable的属性。我们可以重载 NSCoding 的方法，手工来写。

