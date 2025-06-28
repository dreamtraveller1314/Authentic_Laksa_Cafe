extends RichTextLabel

var order = int(randf_range(1,3))
func _ready():
	get_parent().update_order(order)
	pass

func deduct_order():
	order = order-1
	get_parent().update_order(order)
	pass

func check_order():
	if order > 0:
		get_parent().check_food()
	pass

func add_order():
	order = order+ int(randf_range(1,4))
	get_parent().update_order(order)
