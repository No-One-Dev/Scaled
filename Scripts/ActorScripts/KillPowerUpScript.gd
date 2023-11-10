extends Area2D

signal end_game
signal end_choice

func _on_ImpostorNextLevelItem_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("end_game")

func _on_Enemy_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("end_game")

func _on_Enemy3_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("end_game")

func _on_TruthfulImpostorNextLevelItem_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("end_choice")
