extends Node2D

func _on_NextLevelItem_NextLevelUI() -> void:
	$UI/WinScreen.show()

func _on_BackToMainMenuButton_pressed() -> void:
	var _no1 = get_tree().change_scene("res://Scenes/MainMenu.tscn")

func _on_ReplayLevelButton_pressed() -> void:
	var _no2 = get_tree().change_scene("res://Scenes/Level1.tscn")

func _on_NextLevelButton_pressed() -> void:
	var _no3 = get_tree().change_scene("res://Scenes/Level2.tscn")

func _on_QuitButton_pressed() -> void:
	get_tree().quit()
