extends Area2D

@export var value = 1
var costume = randf_range(1,7)

func _ready():
	visible = true
	position.x = 1900
	position.y = -100
	$collect_food.animation = "4"
	print("position: ", position)
	body_entered.connect(_on_Coin_body_entered)
	pass


func _on_Coin_body_entered(body):
	if body.name == "player2":
		visible = false
		get_parent()._addscore()
	pass
