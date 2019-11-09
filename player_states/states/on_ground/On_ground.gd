extends "../Motion.gd"

func handle_input(event):
	

	if event.is_action_pressed("ui_up"):
		#print("emit signal for jump", double_jumped)
		emit_signal("change", "jump")
	
