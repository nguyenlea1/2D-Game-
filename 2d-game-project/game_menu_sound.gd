extends Node2D

func _ready() -> void:
	if $IntroMusic and !$IntroMusic.playing:
		$IntroMusic.play()

func _on_startbutton_pressed():
	$buttonClick.play()


func _on_button_click_finished() -> void:
	get_tree().change_scene_to_file("res://starry_sky.tscn")
