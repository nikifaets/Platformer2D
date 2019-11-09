extends "in_air.gd"

# Called when the node enters the scene tree for the first time.

func enter():
	
	velocity.y = 0
	
func update():
	
	velocity.x = 0
	velocity.x = get_moving_direction()
	velocity.y += gravity
	velocity = owner.move_and_slide(velocity, floor_vector, false, 4, 0.9)

	if owner.is_on_floor():
		
		owner.double_jumped = 0
		emit_signal("change", "idle")
	
func handle_input(event):
	#print(double_jumped)
	.handle_input(event)
