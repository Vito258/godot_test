extends Node2D

var person1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	person1 = person.new("张三")
	var person2 = load("res://基础/节点之外的对象-RefCounted/新脚本.gd").new("李四")
	person2.one_year_past()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
