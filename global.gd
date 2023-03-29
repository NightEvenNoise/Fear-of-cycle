extends Node

var fullscreen = false

func _ready():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		fullscreen = true

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("fullscreen"):
		fullscreen = not fullscreen
		if fullscreen:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
