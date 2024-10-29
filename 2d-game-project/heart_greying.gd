extends Node2D

@onready var heart_sprite = $HeartSprite

# Function to switch to greyscale
func set_grayscale(grayscale: bool) -> void:
	if grayscale:
		heart_sprite.modulate = Color(0.5, 0.5, 0.5, 1) # Dims color for grayscale effect
	else:
		heart_sprite.modulate = Color(1, 1, 1, 1) # Resets full color

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
