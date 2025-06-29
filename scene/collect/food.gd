extends Area2D

@onready var player = preload("res://scene/collect/player.tscn")
var costume = randf_range(1,7)
var score = 0
var y = randf_range(5,9)

func _physics_process(delta):
	
	var gravity = Vector2.ZERO
	
	if position.y < 66:
		gravity.y = y
		
	else:
		reset()
	
	position += gravity
pass

func reset():
	visible=true
	position.y = -800
	position.x = randf_range(-110,-250)
	costume = randf_range(1,7)
	y = randf_range(5,9)
	if costume <2:
		$AnimatedSprite2D.animation = "1"
	elif costume <3:
		$AnimatedSprite2D.animation = "2"
	elif costume <4:
		$AnimatedSprite2D.animation = "3"
	elif costume <5:
		$AnimatedSprite2D.animation = "4"
	elif costume <6:
		$AnimatedSprite2D.animation = "5"
	elif costume <7:
		$AnimatedSprite2D.animation = "6"
	else:
		$AnimatedSprite2D.animation = "7"
		
	pass


func _on_food_body_entered(body):
	visible = false
	reset()
	body.add_score()
	pass # Replace with function body.
