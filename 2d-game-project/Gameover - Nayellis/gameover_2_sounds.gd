extends Node2D

func _on_child_entered_tree(node: Node) -> void:
	$GameOverSound.play()


func _on_yes_button_pressed():
	$YesButtonSound.play()
	
func _on_yes_button_sound_finished() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


func _on_no_button_pressed():
	$NoButtonSound.play()

func _on_no_button_sound_finished() -> void:
	get_tree().change_scene_to_file("res://game_menu.tscn")
