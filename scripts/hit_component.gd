extends Node2D
class_name HitComponent


func _on_ball_body_entered(body: Node) -> void:
	if body is Block:
		body.hit()
	
	get_parent().linear_velocity = get_parent().linear_velocity.normalized() * get_parent().starting_velocity
