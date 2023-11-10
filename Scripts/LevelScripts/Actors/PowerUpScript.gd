extends Area2D

signal picked_powerup

func _on_PowerUp_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("picked_powerup")
		queue_free()
