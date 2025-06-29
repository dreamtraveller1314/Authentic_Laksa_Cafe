extends Node
var score1 = 0
var menu = 0
@onready var add_score_sound = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"menu 2".visible = true
	$"menu".visible = true
	menu = 0
	pass # Replace with function body.

func _addscore ():
	score1 += 1
	$AudioStreamPlayer2D.play()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if menu == 0:
		$"menu 2".visible = true
		$"menu".visible = true
	if menu == 1:
		$"menu 2".visible = true
		$"menu".visible = false
	if menu == 2:
		$"menu 2".visible = false
		$"menu".visible = false
		get_tree().paused = false
			
	if score1 > 6:
		get_tree().change_scene_to_file("res://scene/collect/RUNWAY.tscn")
	pass
	

func _on_button_pressed() -> void:
	menu += 1
	pass # Replace with function body.
