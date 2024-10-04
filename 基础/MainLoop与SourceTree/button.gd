extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# 连接信号
func _on_pressed() -> void:
	if(text == "开始"):
		self.text = "暂停"
		# 添加开始逻辑
		get_tree().paused = false
	elif(text == "暂停"):
		self.text = "开始"
		# 添加暂停逻辑
		get_tree().paused = true
		self.process_mode = 1 # 设置暂停模式为1
	pass # Replace with function body.
