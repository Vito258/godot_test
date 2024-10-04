extends Node

func _ready() -> void:
	$LineEdit.grab_focus()
	pass

func _on_line_edit_text_submitted(new_text: String) -> void:
	  # 将焦点设置到LineEdit2上
	$LineEdit2.grab_focus()
	pass # Replace with function body.


func _on_line_edit_2_text_submitted(new_text: String) -> void:
	pass # Replace with function body.
