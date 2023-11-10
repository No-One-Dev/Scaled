extends Area2D

signal NextLevelUI

func _on_NextLevelItem_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("NextLevelUI")
