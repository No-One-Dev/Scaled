extends Area2D

signal picked_up3a

func _on_PowerUp_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("picked_up3a")
		queue_free()
