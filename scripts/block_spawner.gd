extends Node2D

@export var left_margin := 17 + 80
@export var top_margin := 17
@export var rows := 8
@export var collums := 16

const BLOCK = preload("res://scenes/block.tscn")


func _ready() -> void:
	for i in collums:
		for j in rows:
			var block_size = Block.block_size
			var spawning_position = Vector2(left_margin + (block_size.x + 1) * i + block_size.x / 2, top_margin + (block_size.y + 1) * j + block_size.y / 2)
			
			var new_block = BLOCK.instantiate()
			new_block.position = spawning_position
			add_child(new_block)
