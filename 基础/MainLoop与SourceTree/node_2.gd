extends Node

func _ready() -> void:
	# 使用代码的方法将当前节点添加到分组
	add_to_group("A")
	pass
func printName():
	print(name)
