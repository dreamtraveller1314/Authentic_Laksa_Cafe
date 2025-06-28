extends CharacterBody2D
var score = 0

func _physics_process(delta):
	var gravity = Vector2.ZERO
	#position.x = 200
	#if Input.is_action_pressed("ui_left"):
	if position.x > -450 and position.x < 200:
		if Input.is_action_pressed("ui_left"):
			gravity.x = -500
		if Input.is_action_pressed("ui_right"):
			gravity.x = 500
	elif position.x > 200:
		if Input.is_action_pressed("ui_left"):
			gravity.x = -500
	elif position.x < -450:
		if Input.is_action_pressed("ui_right"):
			gravity.x = 500
			
	set_velocity(gravity)
	move_and_slide()
	
pass

func add_score():
	score += 1
	print(score)
	get_parent().update_score(score)
	get_parent().play_win_sound()
	if score>19:
		get_parent().update_score(score)
		get_parent().next_stage()
	pass
	
func deduct_score():
	score -= 1
	print (score)
	get_parent().update_score(score)
	get_parent().play_lose_sound()
	pass


