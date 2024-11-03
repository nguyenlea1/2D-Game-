extends Node2D

var music_playing = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if !music_playing and $AudioStreamPlayer2D != null:
		$AudioStreamPlayer2D.play()
		music_playing = true
