extends TextureProgressBar


func _process(delta: float) -> void:
	if ValueManager.progress >= max_value:
		ValueManager.progress -= max_value
		ValueManager.level += 1
	
	value = ValueManager.progress
