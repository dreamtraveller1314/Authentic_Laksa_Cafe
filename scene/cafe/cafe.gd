extends Node2D

@onready var add_money_sound = $AudioStreamPlayer2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var money = 0
@onready var timer = get_node("Timer")
@onready var timer2 = get_node("Timer2")
@onready var timer3 = get_node("Timer3")
var time = 60

func update_order(a):
	$RichTextLabel.text = ("[rainbow]") + str(a) + (" order")
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite10.visible = true
	$Node2D.visible = false
	$Button9.visible = true
	get_tree().paused = true
	$RichTextLabel3.visible = false
	$Timer4.set_wait_time(1)
	$Timer4.start()
	pass # Replace with function body.

func reset():
	$Sprite2.visible = true
	$Sprite3.visible = false
	$Sprite4.visible = false
	$Sprite5.visible = false
	$Sprite6.visible = false
	$Sprite7.visible = false
	$Sprite8.visible = false
	$Sprite9.visible = false
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_Button_pressed():
	$Sprite4.visible = true
	pass # Replace with function body.


func _on_Button2_pressed():
	$Sprite3.visible = true
	pass # Replace with function body.


func _on_Button3_pressed():
	$Sprite5.visible = true
	pass # Replace with function body.


func _on_Button4_pressed():
	$Sprite6.visible = true
	pass # Replace with function body.


func _on_Button5_pressed():
	$Sprite7.visible = true
	pass # Replace with function body.


func _on_Button6_pressed():
	$Sprite8.visible = true
	pass # Replace with function body.


func _on_Button7_pressed():
	$Sprite9.visible = true
	pass # Replace with function body.

func _on_Button8_pressed():
	$RichTextLabel.check_order()
	pass # Replace with function body.

func check_food():
	if $Sprite3.visible == true and $Sprite4.visible == true and $Sprite5.visible == true and $Sprite6.visible == true and $Sprite7.visible == true and $Sprite8.visible == true and $Sprite9.visible == true:
		correct()
	else:
		$RichTextLabel3.visible = true
		timer3.set_wait_time(1)
		timer3.start()
	pass
	
func correct():
	$RichTextLabel.deduct_order()
	money = money + 6
	add_money_sound.play()
	$RichTextLabel2.text = ("Money: ") + str(money)
	reset()
	pass

func _on_Timer_timeout():
	$RichTextLabel.add_order()
	pass # Replace with function body.

func _on_Timer2_timeout():
	$Node2D.money1(money)
	$Node2D.visible = true
	get_tree().paused = true
	pass # Replace with function body.

func _on_Button9_pressed():
	get_tree().paused = false
	$Sprite10.visible = false
	$Button9.visible = false
	timer.set_wait_time(randf_range(7,10))
	timer.start()
	timer2.set_wait_time(60)
	timer2.start()
	reset()
	pass # Replace with function body.


func _on_Timer3_timeout():
	$RichTextLabel3.visible = false
	pass # Replace with function body.

func _on_Timer4_timeout():
	time -= 1 
	$RichTextLabel4.text = str(time)
	pass # Replace with function body.
