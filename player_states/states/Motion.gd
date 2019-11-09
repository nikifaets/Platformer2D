extends "../State.gd"

export var speed = 600
export var gravity = 90
var velocity = Vector2()
var floor_vector = Vector2(0, -1)

	
func get_moving_direction():
	
	var direction
	direction = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	direction *= speed

	return direction

