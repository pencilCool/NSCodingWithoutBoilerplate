# NSCodingWithoutBoilerplate

版本一的问题是：

1. 属性列表不能直接获取到父类的属性。

2. 有些属性不支持NSCoding 
	* 没有对应的ivar，是只读的。不能使用setValueForKey
	* 有ivar，是readonly，但ivar 和属性名字不匹配，也会出错。
	* 如果没有ivar，可读写，那反正是计算属性，就没必要存了。

	> 总之我们就是要处理那些，有ivar，且ivar 和属性名字匹配的属性。
	
3.  不是每一个属性都支持NSCoding

4.  有些属性我们不需要存档
	* 定时器
	* 一些为了追踪运行时状态的标志位。

