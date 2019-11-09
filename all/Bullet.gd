extends Area2D

export var speed = 30
var start_pos = Vector2()
var start_direction = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	position = start_pos

	rotation = start_direction.angle()
	
func _process(delta):
	position += start_direction.normalized()*speed

func shoot(start, direction):
	start_pos = start
	start_direction = direction
	


func _on_Bullet_body_entered(body):
	
	queue_free()
