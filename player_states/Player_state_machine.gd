extends "State_machine.gd"
signal change

onready var FIRST_STATE = get_node("Move")
var states = {}

func _ready():
	
	states = {"idle": $Idle, "move": $Move, "jump": $Jump, "fall": $Fall}

	current_state = FIRST_STATE
	
	for child in get_children():
		child.connect("change", self, "_change_state")

func _physics_process(delta):
	

	current_state.update()
	
func _change_state(new_state):
	
	#print("new state ", new_state)
	._change_state(states[new_state])