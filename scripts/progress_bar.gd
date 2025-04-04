extends TextureProgressBar

signal leveled_up

@onready var level_up_sfx: AudioStreamPlayer = $LevelUpSFX


func _process(delta: float) -> void:
	if ValueManager.progress >= max_value:
		ValueManager.progress -= max_value
		leveled_up.emit()
		level_up_sfx.play()
	
	value = ValueManager.progress
