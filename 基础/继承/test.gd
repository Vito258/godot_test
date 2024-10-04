extends Ha


func _ready() -> void:
	# super 方法的执行
	# super.printA()
	
	# 执行test 脚本内自己的printA方法
	printA()
	
func printA():
	# 子类方法中引用父类的同名方法可以直接super
	super()
	print("我是test 脚本内的printA")
