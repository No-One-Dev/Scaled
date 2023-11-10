extends Area2D

signal cast_bamboozle_effect

func _on_Enemy3_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("cast_bamboozle_effect")
