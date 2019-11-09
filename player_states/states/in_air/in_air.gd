extends "../Motion.gd"
const DOUBLE_JUMP = "res://anim/Roll"

func handle_input(event):

	if event.is_action_pressed(("ui_up")):
			
		if not owner.double_jumped:
			print("double jumped")
			owner.double_jumped = 1
			owner.find_node("Movement").play("double_jump")
			emit_signal("change", "jump")
			
			

	
	