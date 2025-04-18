extends Node2D
class_name StartComponent

@onready var arrow: Sprite2D = $Arrow

var aiming : bool = true


func _process(delta: float) -> void:
	look_at(get_global_mouse_position())


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click") and aiming:
		get_parent().freeze = false
		
		var target_direction = get_global_mouse_position() - get_parent().position
		
		get_parent().linear_velocity = target_direction.normalized() * get_parent().starting_velocity
		
		arrow.visible = false
		aiming = false


#func _ready() -> void:
	#get_parent().linear_velocity = Vector2(-1,1).normalized() * starting_velocity
