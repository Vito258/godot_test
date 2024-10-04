extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	# 使用set_script 添加脚本
	var scr = load("res://基础/万类之父-Object/A.gd")
	$NodeChild.set_script(scr)
	$NodeChild.a()
	# queue_free 将节点自身从程序中删除，这个方法相当于call_deffer("free") 在空闲帧中调用free 函数
	self.queue_free()
	pass # Replace with function body.

func _notification(what: int) -> void:
	if(what == 1):
		print("what == 1 ,执行结束")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
