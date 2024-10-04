extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 设置节点的可见性
	# visible = false 等同于hide(),所以visible = true 等同于 show()
	
	# 设置节点的颜色，同样会修改子节点的颜色
	modulate = "#555555"
	# self_modulate 只会修改当前节点的颜色
	self_modulate = "#00FF00"
	# 使用z_index 调整当前节点被绘制的优先级，当z_index 完全相同时，绘制顺序取决于位于节点位于节点树上的位置
	z_index = 0
	# y_sort 按照y轴值的大小安排绘制顺序，值越大越先被绘制
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
