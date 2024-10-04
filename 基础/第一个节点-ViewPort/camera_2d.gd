extends Camera2D


func _input(event):
	# 判断是不是鼠标输入
	if event is InputEventMouseButton:
		# 判断按下的是不是鼠标左键
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed == true: 
				print("鼠标左键按下中...")
				# 将事件设置为已处理,不再向下传递给_unhandled_input
				get_parent().set_input_as_handled()
	pass
			
func _unhandled_input(event: InputEvent) -> void:
		# 判断是不是鼠标输入
	if event is InputEventMouseButton:
		# 判断按下的是不是鼠标左键
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed == true:
				print("鼠标左键按下中...")
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 创建一个鼠标左键按下 的event输入对象
	var mouse_input = InputEventMouseButton.new()
	mouse_input.button_index = MOUSE_BUTTON_LEFT
	mouse_input.pressed = true
	
	# 将对象添加到节点
	get_parent().push_input(mouse_input)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
