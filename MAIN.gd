extends Node

# 声明变量的方法
var a = 1

# 加入类型限定，一共有String number boolean float 4种类型
var b:int = 2;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(a)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(a)
	pass



# 声明函数的方法
func _enter_tree() -> void:
	a = "hello world"
	print(a)
	pass   # 这里pass 并没有实际的含义，只是充当一个函数的结构
	
# 函数的调用和默认值的设置
func getResult() -> int:
	return add()
	
func add (a:int = 1 , b:int = 1) -> int:
	return a+b
	pass

# if 的使用
func get_if() -> void:
	if(1>0):
		print("111111")
	elif(1<0):
		print("222222")
	else:
		print("333333")
	pass
	
# while 的使用
func get_while() -> void:
	while(true):
		print("hello world")
	pass

# 数组与for
# 数组是引用变量，var b = a ,改动b时也会影响到a
var a1:Array = [1, 1.1, "hello", true]
# 加入类型限制
var a2:Array[int] = [1,2,3,4]

func get_for():
	# 向数组中添加元素
	a2.append(6)
	a2.append(7)
	a2.append(6)
	
	# 在数组中删除元素,这里的erase 不同与c++，是删除指定元素，而且只删除一次，假如有两个相同元素则优先删除索引在前面的那一个
	a2.erase(6)
	
	# 只有这种类似加强for 循环
	for i in a2:
		print(i)
	pass
# 访问单例
func visitSingle():
	AAAA
	pass	
	
# 场景内节点的协调工作 get_node()
# 脚本过多会显得混乱，一般是在根节点添加脚本，如何在一个脚本文件中控制若干个节点的分工合作？
# 1、使用get_node(节点名称) 或者简略写法 $节点名称
# 2、获取直接子节点：使用get_child(子节点的索引数)
# 3、获取直接父节点：使用get_parent(),获取当前节点的直接父节点，和get_node("..")是一样的作用	
# 4、获取所有的直接子节点： get_children(),不能返回多级子节点

# 使用get_node 有一个缺点那就是如果对象、函数、方法不正确时，应用程序会直接崩溃，不同场景之间交互时使用信号，场景内部节点交互时使用get_node

# 信号：
# 1、分为内置信号和自定义信号
# 内置信号在内置代码中定义，在一定条件下通过godot 自动触发
# 自定义信号
signal abc
# 2、信号的绑定,既将一个对象的信号和另一个对象的方法进行绑定，这两个对象可以是相同的对象也可以是不同的对象
   # 2.1 编辑器绑定，将一个信号和另一个节点的脚本进行连接
   # 2.2 代码绑定:
#signal abc
#
#func _ready() -> void:
	## 使用代码连接信号和对象
	#self.connect("abc",Callable(self,"a"))
	## 发射信号，这里的12 就是传递给a 函数的 参数b 
	#emit_signal("abc",12)
#
#func a(b):
	#print(b)
	
# await
# 有点像js中的await ，是某段代码暂停运行，直到接收到某个对象的信号为止
