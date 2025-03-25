extends RigidBody2D
class_name Ball

@export var starting_velocity = 100

# 0 is fully intense
const ANGLE_INTENSITY = 50

var last_velocity: Vector2


func _physics_process(delta: float) -> void:
	last_velocity = linear_velocity


func _ready() -> void:
	linear_velocity = Vector2(-1,1).normalized() * starting_velocity


func _on_body_entered(body: Node) -> void:
	if body is Block:
		body.hit()
	
	#elif body is Bar and last_velocity.y >= 0:
		#print("ALKFJKLF")
		#var normal = ((body.position + Vector2(0, ANGLE_INTENSITY - 5.5)) - position).normalized()
		#print(normal)
		#var perpendicular_velocity = last_velocity.dot(normal) * normal
		#var up_velocity = last_velocity.dot(Vector2.UP) * Vector2.UP
		#print(linear_velocity)
		#print(perpendicular_velocity)
		#var parallel_velocity = last_velocity - perpendicular_velocity
		#
		#var out_velocity = (-perpendicular_velocity) + (parallel_velocity)
		#
		#linear_velocity = out_velocity
