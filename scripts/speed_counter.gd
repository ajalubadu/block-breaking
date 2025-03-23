extends Label

func _process(delta: float) -> void:
	text = str(ValueManager.bar_speed)
