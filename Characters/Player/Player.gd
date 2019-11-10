extends KinematicBody2D

var screen_size = Vector2()
export var speed = 10
export var gravity = 1
export var jump_speed = 15
var velocity = Vector2()
var double_jumped = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$EnterBlink.play("enter_blink")
	screen_size = get_viewport_rect().size
	


func _on_Movement_animation_finished():
	
	if $Movement.animation == "double_jump":

		$Movement.play("idle")

		

func _on_EnterBlink_animation_finished():
	
	$EnterBlink.loops += 1
	
	if $EnterBlink.loops >= 3:
		$EnterBlink.hide()
	
