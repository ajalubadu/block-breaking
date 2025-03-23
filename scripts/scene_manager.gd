extends Node


func reload_world():
	get_tree().reload_current_scene()
	ValueManager.score = 0


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("reset"):
		reload_world()
