extends Node2D
class_name HitComponent


func _on_ball_body_entered(body: Node) -> void:
	if body is Block:
		body.hit()
