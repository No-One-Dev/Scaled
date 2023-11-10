extends Area2D

signal picked_up3c

var mesh

func _ready() -> void:
	mesh = $MeshInstance2D
	mesh.hide()

func _on_PowerUp3_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("picked_up3c")
		mesh.show()
		yield(get_tree().create_timer(0.1), "timeout")
		queue_free()
