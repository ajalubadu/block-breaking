extends Node2D

@export var left_margin := 17 + 80
@export var top_margin := 17
@export var rows := 8
@export var collums := 16

var multiplier_block_chance := 0.05

const BLOCK = preload("res://scenes/block.tscn")
const MULTIPLIER_BLOCK = preload("res://scenes/multiplier_block.tscn")


func _ready() -> void:
	for i in collums:
		for j in rows:
			var block_size = Block.block_size
			var spawning_position = Vector2(left_margin + (block_size.x + 1) * i + block_size.x / 2, top_margin + (block_size.y + 1) * j + block_size.y / 2)
			var new_block
			
			#if randf() <= 0.05:
				#new_block = MULTIPLIER_BLOCK.instantiate()
			#else:
			new_block = BLOCK.instantiate()
				
			new_block.position = spawning_position
			add_child(new_block)
