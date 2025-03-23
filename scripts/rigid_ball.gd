extends RigidBody2D
class_name Ball

@export var starting_velocity = 100

# 0 is fully intense
const ANGLE_INTENSITY = 10

var just_collided := false


func _ready() -> void:
	linear_velocity = Vector2(0,1).normalized() * starting_velocity


func _on_body_entered(body: Node) -> void:
	if body is Block:
		body.hit()
	elif body is Bar and linear_velocity.dot(Vector2.DOWN) >= 0:
		print("ALKFJKLF")
		var normal = ((body.position + Vector2(0, ANGLE_INTENSITY - 5.5)) - position).normalized()
		print(normal)
		var perpendicular_velocity = linear_velocity.dot(normal) * normal
		var up_velocity = linear_velocity.dot(Vector2.UP) * Vector2.UP
		print(linear_velocity)
		print(perpendicular_velocity)
		var parallel_velocity = linear_velocity - perpendicular_velocity
		
		var out_velocity = (-perpendicular_velocity) + (parallel_velocity)
		
		linear_velocity = out_velocity
