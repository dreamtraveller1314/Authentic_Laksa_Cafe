extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -900.0


func _physics_process(delta: float) -> void:
	if not is_on_floor() and get_parent().menu > 1:
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.flip_h = true
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.flip_h = false
	
	for i in range(get_slide_collision_count()):
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()
		if collider and collider.has_method("collect"):
			collider.collect()
			collider.queue_free()
