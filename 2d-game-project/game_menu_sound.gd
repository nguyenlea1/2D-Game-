extends Node2D
@onready var audio = $buttonClick


func _on_enter_store_button_pressed():
	audio.play()
	get_tree().change_scene_to_file("res://starry_sky.tscn")
