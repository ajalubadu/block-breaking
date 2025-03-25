extends StaticBody2D
class_name Block

@onready var break_sfx: AudioStreamPlayer = $BreakSFX
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

static var block_size := Vector2(7, 7)
const BREAK = preload("res://assets/sounds/break.wav")
var score_increase = 1
#static var just_broke := false


func hit() -> void:
	break_sfx.play()
	ValueManager.score += score_increase
	animated_sprite_2d.play("break")
	collision_layer = 0
	collision_mask = 0
	#just_broke = true


#func _process(delta: float) -> void:
	#if just_broke and collision_layer != 0:
		#print("off", self)
		#collision_layer = 0
	#elif just_broke:
		#print("on", self)
		#collision_layer = 1
		#just_broke = false


func _on_animated_sprite_2d_animation_finished() -> void:
	queue_free()
