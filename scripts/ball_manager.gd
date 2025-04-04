extends Node
class_name BallManager

const BALL = preload("res://scenes/ball.tscn")


func level_up():
	ValueManager.level += 1
	
	spawn_ball()
