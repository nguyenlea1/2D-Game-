extends Node2D

@export var blue_candy: PackedScene
@export var green_candy: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$SpawnTimer.start()
	
#spawn candy
func on_SpawnTimer_timeout() -> void:
	var candy = blue_candy.instantiate()  # Create a new candy instance
	var candy1 = green_candy.instantiate()
	candy.position = Vector2(randf() * get_viewport().size.x, 0)  # Spawn at a random x position at the top
	candy1.position = Vector2(randf() * get_viewport().size.x, 1)  # Spawn at a random x position at the top
	add_child(candy)  # Add candy to the scene
	add_child(candy1)
