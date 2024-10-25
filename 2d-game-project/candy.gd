extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



#func candy():
	var new_candy = load("<alien>").instance()
	new_candy.position.x = randi() % SCREEN_WIDTH
	new_candy.position.y = randi() % SCREEN_HEIGHT
	add_child(new_cad)
