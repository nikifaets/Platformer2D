extends "On_ground.gd"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func update():
	

	velocity.x = get_moving_direction()
	velocity.y += gravity
	velocity = owner.move_and_slide(velocity, floor_vector, false, 4, 0.9)
	
	if not owner.is_on_floor():
		emit_signal("change", "fall")
	
	elif not velocity.x:
		emit_signal("change", "idle")

func handle_input(event):
	
	.handle_input(event)
