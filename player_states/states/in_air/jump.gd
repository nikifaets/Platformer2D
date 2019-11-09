extends "in_air.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func enter():
	
	
	velocity.y = -1500
	
func update():
	
	#print("double jumped ", double_jumped)
	velocity.x = get_moving_direction()
	velocity.y += gravity
	velocity = owner.move_and_slide(velocity, floor_vector, false, 4, 0.9)
	
	if velocity.y >= 0:

		emit_signal("change", "fall")
		
	

func handle_input(event):
	
	.handle_input(event)



