extends Area2D


func _physics_process(delta: float) -> void:
	for i in get_overlapping_areas():
		# 判断元素是不是小球
		if i.is_in_group("Ball"):
			i.vec_speed.x = 5
	var y1 = Input.get_action_strength("玩家一-向上走")*5
	var y2 = Input.get_action_strength("玩家一-向下走")*5
	var y3 = position.y+y2 - y1 
	if y3 > 16 && y3 < 630:
		# 球拍未出界
		position.y = position.y+y2 - y1
