extends "On_ground.gd"

func update():
	

	var direction = get_moving_direction()
	if direction:
		emit_signal("change", "move")
		
	if not owner.is_on_floor():
		emit_signal("change", "fall")

func handle_input(event):
	.handle_input(event)
