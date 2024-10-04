extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	AAAA.printAAAA()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.get_action_strength("向左走"):
		self.position.x -= 1
	if Input.get_action_strength("向右走"):
		self.position.x += 1
	if Input.get_action_strength("向上走"):
		self.position.y -= 1
	if Input.get_action_strength("向下走"):
		self.position.y += 1
	pass

func _enter_tree() -> void:
	print("hello world")
	pass   # 这里pass 并没有实际的含义，只是充当一个函数的结构
