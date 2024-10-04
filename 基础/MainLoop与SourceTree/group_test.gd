extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 在根节点写get_tree 函数用于获取场景树
	get_tree().call_group("A","printName")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
