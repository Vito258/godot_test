extends Area2D

 
signal abc

func _ready() -> void:
	# 使用代码连接信号和对象
	self.connect("abc",Callable(self,"a"))
	# 发射信号，这里的12 就是传递给a 函数的 参数b 
	emit_signal("abc",12)

func a(b):
	print(b)

func _physics_process(delta: float) -> void:
	for i in get_overlapping_areas():
		# 判断元素是不是小球
		if i.is_in_group("Ball"):
			# 获取声音节点
			# get_node("SoundEffect").play()
			# 简略写法
			#$SoundEffect.play()
			#i.vec_speed.x = -5
			pass
	var y1 = Input.get_action_strength("玩家二-向上走")*5
	var y2 = Input.get_action_strength("玩家二-向下走")*5
	var y3 = position.y+y2 - y1 
	if y3 > 16 && y3 < 630:
		# 球拍未出界
		position.y = position.y+y2 - y1

# 接收信号并处理
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Ball"):
		$SoundEffect.play()
		area.vec_speed.x = -5
