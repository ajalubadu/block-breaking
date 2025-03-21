extends StaticBody2D

@export var speed = 1

var velocity

func _physics_process(delta: float) -> void:
	var input_axis = Input.get_axis("move left", "move right")
	
	velocity = Vector2(input_axis * speed, 0)
	
	if position + velocity > Vector2(103, -INF) and position + velocity < Vector2(217, INF):
		position += velocity
