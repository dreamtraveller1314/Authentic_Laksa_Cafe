extends Area2D

@export var value = 1
var costume = randf_range(1,7)

func _ready():
	visible = true
	position.x = 300
	position.y = -100
	$collect_food.animation = "5"
	body_entered.connect(_on_Coin_body_entered)
	pass


func _on_Coin_body_entered(body):
	if body.name == "player2":
		visible = false
		position.x = -100
		position.y = 100
		get_parent()._addscore()
	pass
