extends Node

var current_state = null
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _change_state(new_state):

	current_state.exit()
	new_state.enter()
	current_state = new_state
	
	
func _input(event):
	current_state.handle_input(event)
