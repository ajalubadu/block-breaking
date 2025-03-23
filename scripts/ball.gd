extends StaticBody2D
#class_name Ball

@export var speed = 1

var velocity = Vector2(1,-1) * speed

func _physics_process(delta: float) -> void:
	position += velocity
