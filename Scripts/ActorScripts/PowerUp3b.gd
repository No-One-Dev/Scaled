extends Area2D

signal picked_up3b

func _on_PowerUp2_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("picked_up3b")
		queue_free()
