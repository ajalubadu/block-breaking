extends StaticBody2D

var velocity

func _physics_process(delta: float) -> void:
	var input_axis = Input.get_axis("move left", "move right")
	
	velocity = Vector2(input_axis * ValueManager.bar_speed, 0)
	
	#if position + velocity > Vector2(103, -INF) and position + velocity < Vector2(217, INF):
		#position += velocity
	
	position = clamp(position + velocity, Vector2(103, position.y), Vector2(217, position.y))


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("speed up"):
		ValueManager.bar_speed += 0.5
	elif event.is_action_pressed("slow down"):
		ValueManager.bar_speed -= 0.5
