extends Node2D
class_name StartComponent

@export var starting_velocity : float = 50


func _ready() -> void:
	get_parent().linear_velocity = Vector2(-1,1).normalized() * starting_velocity
