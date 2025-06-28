extends Node2D
var money = 0

func _on_Button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Front.tscn")
	
	pass # Replace with function body.
	
func money(m):
	money = m
	$RichTextLabel.text = ("[wave]You have earn[shake][rainbow] $") + (str(money)) + ("[/rainbow] [/shake]in two minutes[/wave]")
