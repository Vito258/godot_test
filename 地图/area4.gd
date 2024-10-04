extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	pass

#  物理引擎每刷新一次执行
func _physics_process(delta: float) -> void:
		# 获取与当前区域内与它交互的area，是Area2D 的一个内置函数，返回一个数组，数组的元素限制为Area2D
	for i in get_overlapping_areas():
		# 判断元素是不是小球
		if i.is_in_group("Ball"):
			i.vec_speed.y = -5
	pass
