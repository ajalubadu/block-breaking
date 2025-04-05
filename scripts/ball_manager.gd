extends Node
class_name BallManager

const BALL = preload("res://scenes/ball.tscn")


func _ready() -> void:
	spawn_ball()


func level_up():
	ValueManager.level += 1
	
	spawn_ball()


func spawn_ball():
	var new_ball = BALL.instantiate()
	new_ball.position = Vector2(160,130)
	add_child(new_ball)
