extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var s1 = load("res://icons/icon.svg")
	var s2 = load("res://icons/icon.svg")
	print(s1 == s2)                 # 输出true
	print(s1 == self.texture)       # 输出true
	
	var s3 = MyRes.new()
	var s4 = MyRes.new()
	print(s3 == s4)                 # 输出false
	
	var s5 = Image.new()
	s5.load("res://icons/icon.svg")
	self.texture = s5
	print(s1 == self.texture)       # 输出false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
