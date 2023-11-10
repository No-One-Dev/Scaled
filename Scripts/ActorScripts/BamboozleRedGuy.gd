extends Area2D

signal loose_to_trick

var mesh

func _ready() -> void:
	mesh = $MeshInstance2D
	mesh.hide()

func _on_Enemy21_body_entered(body: Node) -> void:
	if body.name == "Player":
		emit_signal("loose_to_trick")
		mesh.show()
		yield(get_tree().create_timer(0.1), "timeout")
		queue_free()
