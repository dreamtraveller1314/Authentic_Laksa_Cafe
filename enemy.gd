extends Area2D

var costume = randf_range(1,7)
var y = randf_range(5,9)

func _physics_process(delta):
	
	var gravity = Vector2.ZERO
	
	if position.y < 66:
		gravity.y =  y
		
	else:
		reset()
	
	position += gravity
pass

func reset():
	visible=true
	position.y = -850
	position.x = randf_range(-300,-500)
	y = randf_range(5,9)
	costume = randf_range(1,7)
	if costume <2:
		$enemy.animation = "1"
	elif costume <3:
		$enemy.animation = "2"
	elif costume <4:
		$enemy.animation = "3"
	elif costume <5:
		$enemy.animation = "4"
	elif costume <6:
		$enemy.animation = "5"
	elif costume <7:
		$enemy.animation = "6"
	else:
		$enemy.animation = "7"
		
	pass

func _on_Area2D_body_entered(body):
	visible = false
	reset()
	body.deduct_score()
	pass # Replace with function body.
	

