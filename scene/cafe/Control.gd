extends Control

var menu = 1
@onready var add_score_sound = $AudioStreamPlayer2D
@onready var subtract_score_sound = $AudioStreamPlayer2D2

func _on_Button_pressed():
	menu = menu+1
	pass # Replace with function body.

func _process(delta):
	
	if menu<2:
		$Menu.visible = true
		$Menu2.visible = false
		$player.visible = false
		$food.visible = false
		$enemy.visible = false
		$food2.visible = false
		$enemy2.visible = false
		
	if menu>1:
		$Menu.visible = false
		$Menu2.visible = true
		
	if menu>2:
		$Menu2.visible = false
		$player.visible = true
		$food.visible = true
		$enemy.visible = true
		$food2.visible = true
		$enemy2.visible = true
		get_tree().paused = false
	pass

func update_score(a):
	$Score.text = ("[rainbow]") + str(a)
	pass

func play_win_sound():
	add_score_sound.play()

func play_lose_sound():
	subtract_score_sound.play()

func next_stage():
	get_tree().change_scene_to_file("res://scene/cafe/cafe.tscn")
