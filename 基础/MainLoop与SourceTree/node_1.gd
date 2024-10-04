extends Node

func _ready() -> void:
	# 使用代码的方法将当前节点添加到分组
	add_to_group("A")
	
	## 判断是否在指定分组内
	#print(is_in_group("A"))
	#
	## 从分组中删除
	#remove_from_group("A")
	#
	#print(is_in_group("A"))
	pass
func printName():
	print(name)
