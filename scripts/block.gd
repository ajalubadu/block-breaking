extends StaticBody2D
class_name Block

@onready var break_sfx: AudioStreamPlayer = $BreakSFX
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

static var block_size := Vector2(7, 7)
const BREAK = preload("res://assets/sounds/break.wav")


func hit() -> void:
	break_sfx.play()
	ValueManager.score += 1
	animated_sprite_2d.play("break")
	collision_layer = 0
	collision_mask = 0


func _on_animated_sprite_2d_animation_finished() -> void:
	queue_free()
