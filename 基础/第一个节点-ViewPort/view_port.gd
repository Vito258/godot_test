extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 使两个视窗表示的是同一个2D世界
	$HBoxContainer/SubViewportContainer2/SubViewport.world_2d = $HBoxContainer/SubViewportContainer/SubViewport.world_2d
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
