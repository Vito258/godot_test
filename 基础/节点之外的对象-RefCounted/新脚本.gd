extends RefCounted

# RefCounted 中的引用计数器，会自动计算有多少变量代表了自己
# 特征1：当引用计数器归零时，该对象自动被程序删除
# 特征2：只有四个内置函数，不像node 一样频繁受场景树的控制，更加轻量

class_name person
var name: String = "" 
var age:int = 0

func _init(pName:String) -> void:
	name = pName
	print(name ,"出生了")
	pass

func one_year_past() -> void:
	age+=1
	pass
	
func _notification(what: int) -> void:
	if(what == 1):
		print(name,"寄了","享年",age,"岁")
