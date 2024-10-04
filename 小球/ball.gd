extends Area2D

# 控制小球的速度
var vec_speed:Vector2 = Vector2(5,5)

#记录小球的初始位置
var init_postion:Vector2 = Vector2(570,324)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 给小球添加一个标志
	self.add_to_group("Ball")
	position = Vector2(1,1)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += vec_speed
	pass

# 小球回到初始位置的方法
func reset_position():
	position = init_postion
	pass
