extends KinematicBody2D


const SPELLBLAST = preload("res://all/SpellBlast.tscn")

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

	
func spell_cast():
	
	if Input.is_action_just_pressed("spell_1"):
		
		var spell_blast = SPELLBLAST.instance()
		spell_blast.position = position
		get_parent().add_child(spell_blast)
		

func _on_EnterBlink_animation_finished():
	
	$EnterBlink.loops += 1
	
	if $EnterBlink.loops >= 3:
		$EnterBlink.hide()
	
