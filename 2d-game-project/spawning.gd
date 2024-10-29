extends Node2D

@export var blue_candy: PackedScene
@export var green_candy: PackedScene
@export var pink_candy: PackedScene
@export var taco_food: PackedScene

var items = []  # Array to hold different items

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	items.append(blue_candy)
	items.append(green_candy)
	items.append(pink_candy)
	items.append(taco_food)
	$SpawnTimer.start() #Starts the spawning timer
	
#spawns candy/food
func on_SpawnTimer_timeout() -> void:
	#Selects random item from the array
	var item_type = items[randi() % items.size()]  # Get a random item type (candy or food)
	var item = item_type.instantiate()
	
	var screen_width = get_viewport_rect().size.x
	var item_width = 88  # sprite width
	item.position.x = clamp(randf() * screen_width, item_width / 2, screen_width - item_width / 2)
	item.position.y = 0
	add_child(item)  # Add the candy to the scene
