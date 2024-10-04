extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# 使用代码加载场景
	
	# 读取场景文件
	var scene_resource = load("res://基础/程序启动过程/副场景.tscn" )
	# 场景的初始化返回一个根节点
	var root_node = scene_resource.instantiate()
	# 向主场景添加场景
	self.add_child(root_node)
	
	
	# 使用代码保存场景
	var root_node1 = Node.new()
	var root_node2 = Node.new()
	root_node1.name = "测试父节点"
	root_node2.name = "测试子节点"
	# 把2 设置为1 的子节点
	root_node1.add_child(root_node2)
	# 将1 设置为2 的owner     
	root_node2.owner = root_node1
   
	# 新建场景资源对象，用于存放节点，场景就是节点的集合
	var scene_pack:PackedScene = PackedScene.new()
	# 把节点打包
	scene_pack.pack(root_node1) 
	ResourceSaver.save(scene_pack,"res://基础/程序启动过程/测试代码保存场景.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
