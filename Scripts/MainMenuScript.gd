extends Control

func _on_StartButton_pressed() -> void:
	var _never_used = get_tree().change_scene("res://Scenes/Level1.tscn")

func _on_QuitButton_pressed() -> void:
	get_tree().quit()
