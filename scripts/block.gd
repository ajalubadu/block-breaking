extends StaticBody2D
class_name Block

static var block_size := Vector2(7, 7)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Ball:
		queue_free()
