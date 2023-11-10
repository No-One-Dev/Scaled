extends Node2D

var truth_ending = false

func _on_Enemy_end_game() -> void:
	$UI/LooseUI.show()

func _on_Enemy3_end_game() -> void:
	$UI/LooseUI.show()

func _on_ImpostorNextLevelItem_end_game() -> void:
	$UI/LooseUI.show()

func _on_NextLevelItem_NextLevelUI() -> void:
	$UI/WinScreen.show()

func _on_BackToMainMenuButton_pressed() -> void:
	var _no2 = get_tree().change_scene("res://Scenes/MainMenu.tscn")

func _on_QuitButton_pressed() -> void:
	get_tree().quit()

func _on_ReplayLevelButton_pressed() -> void:
	var _no1 = get_tree().change_scene("res://Scenes/Level4.tscn")

func _on_RetryButton_pressed() -> void:
	var _no1 = get_tree().change_scene("res://Scenes/Level4.tscn")

func _on_NextLevelButton_pressed() -> void:
	var _no1 = get_tree().change_scene("res://Scenes/Level5.tscn")

func _on_Enemy3_cast_bamboozle_effect() -> void:
	$UI/LooseUI.show()
	truth_ending = true

func _on_TruthfulImpostorNextLevelItem_end_choice() -> void:
	if truth_ending == true:
		$UI/LooseUI.hide()
		$UI/WinScreen.show()
	else:
		$UI/LooseUI.show()

func _on_Enemy4_end_game() -> void:
	$UI/LooseUI.show()
