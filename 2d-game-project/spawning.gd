extends Node2D

@export var blue_candy: PackedScene
@export var green_candy: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$StartDelayTimer.start() # Wait for delay after start button press
	
# Function triggered when StartDelayTimer finishes
func _on_start_delay_timer_timeout() -> void:
	print("StartDelayTimer has timed out! Starting SpawnTimer...")
	$SpawnTimer.start() #Starts the spawning timer
	
#spawns candy
func on_SpawnTimer_timeout() -> void:
	spawn_candy() #calls candy spawning function 
	
func spawn_candy() -> void:
	var candy  # Declare the candy variable
	if randf() < 0.5:
		candy = blue_candy.instantiate()  # Instantiate blue candy
	else:
		candy = green_candy.instantiate()  # Instantiate green candy
	var screen_width = get_viewport_rect().size.x
	var candy_width = 88  # Adjust this to your candy sprite width
	candy.position.x = clamp(randf() * screen_width, candy_width / 2, screen_width - candy_width / 2)
	candy.position.y = 0
	add_child(candy)  # Add the candy to the scene
