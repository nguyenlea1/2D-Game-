extends Node2D

func _ready() -> void:
	$IntroMusic.play()

func _on_startbutton_pressed():
	$buttonClick.play()


func _on_button_click_finished() -> void:
	get_tree().change_scene_to_file("res://starry_sky.tscn")
