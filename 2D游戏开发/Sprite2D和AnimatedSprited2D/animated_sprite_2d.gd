extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	# 动画的播放
	play("cat_attack")
	# 动画的停止
	# stop()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
