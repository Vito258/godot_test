extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 加载图片为 CompressedTexture2D 类型
	var compressed_texture: CompressedTexture2D = load("res://icons/Sun_Pixel.png")
	
	# 从 Texture2D 获取 Image 数据
	var image = Image.new()
	image = compressed_texture.get_image()

	# 创建 BitMap
	var bitMap: BitMap = BitMap.new()
	bitMap.create_from_image_alpha(image)
	# 设置点击遮罩，使点击更加准确
	texture_click_mask = bitMap
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	print("炸弹已被安放！！")
	pass # Replace with function body.
