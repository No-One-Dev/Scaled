extends Area2D

signal power_up4a

func _on_PowerUp_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("power_up4a")
		queue_free()
