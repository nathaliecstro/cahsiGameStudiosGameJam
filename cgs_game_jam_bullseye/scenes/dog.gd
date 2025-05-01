extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -400.0



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	var current_scene_file = get_tree().current_scene.scene_file_path
	var level_number = current_scene_file.to_int()
	if Input.is_action_just_pressed("jump") and is_on_floor():
		$dogAnim.play("jump")
		velocity.y = JUMP_VELOCITY
		if level_number == 1:
			$jumpSound.play()
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var direction := Input.get_axis("ui_left", "move_right")
	if direction != 0:
		velocity.x = direction + SPEED
		if is_on_floor():
			$dogAnim.play("walk")
	else:
		velocity.x = 0
		if is_on_floor():
			$dogAnim.play("idle")
		if not is_on_floor() and velocity.y < 0:
			if !$dogAnim.is_playing() or $dogAnim.animation != "jump":
				$dogAnim.play("jump")

	move_and_slide()
	
