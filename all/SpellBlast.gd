extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	
	scale = Vector2(0.1, 0.1)

func _process(delta):
	

	scale += Vector2(0.06, 0.06)
	
	if scale.length() > 3:

		queue_free()
		



func _on_Area2D_body_entered(body):
	
	print(body.collision_layer)
