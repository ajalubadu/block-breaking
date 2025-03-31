extends Label


func _process(delta: float) -> void:
	text = str(ValueManager.level)
