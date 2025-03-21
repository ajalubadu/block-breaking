extends RigidBody2D
class_name Ball

@export var starting_velocity = 100


func _ready() -> void:
	linear_velocity = Vector2(1,-1).normalized() * starting_velocity
