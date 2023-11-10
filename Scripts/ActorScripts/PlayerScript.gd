extends KinematicBody2D

var ACCELERATION = 1200
var MAX_SPEED = 500
var motion = Vector2()  

func _physics_process(_delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")

	if input_vector != Vector2.ZERO:
		motion += input_vector * ACCELERATION
		motion = motion.clamped(MAX_SPEED)
		motion.normalized()
	else:
		motion = motion.linear_interpolate(Vector2.ZERO, 0.05)

	motion = move_and_slide(motion)
func _on_Enemy_end_game() -> void:
	queue_free()

func _on_Enemy3_end_game() -> void:
	queue_free()

func _on_Enemy4_end_game() -> void:
	queue_free()

func _on_Enemy6_end_game() -> void:
	queue_free()

func _on_Enemy7_end_game() -> void:
	queue_free()

func _on_Enemy8_end_game() -> void:
	queue_free()

func _on_NextLevelItem_NextLevelUI() -> void:
	queue_free()

func _on_ImpostorNextLevelItem_end_game() -> void:
	queue_free()

func _on_Enemy21_loose_to_trick() -> void:
	queue_free()

func _on_PowerUp_picked_powerup() -> void:
	scale.y = 1.7

func _on_PowerUp_picked_up() -> void:
	scale = Vector2(1,1)

func _on_PowerUp_picked_up3a() -> void:
	scale.x = 1

func _on_PowerUp2_picked_up3b() -> void:
	scale = Vector2(0.7, 0.7)

func _on_PowerUp3_picked_up3c() -> void:
	scale.x = 1

func _on_PowerUp_power_up4a() -> void:
	scale = Vector2(scale.x/2, scale.y/2)
