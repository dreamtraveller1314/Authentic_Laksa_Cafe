extends Node
var score1 = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _addscore ():
	score1 += 1
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if score1 > 6:
		get_tree().change_scene_to_file("res://scene/collect/RUNWAY.tscn")
	pass
