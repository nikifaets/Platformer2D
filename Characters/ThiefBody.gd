extends KinematicBody2D

var path = PoolVector2Array()
var direction = Vector2()
export var speed = 50
var path_idx = 0

func _ready():
	
	path = get_parent().get_curve().get_baked_points()
	print(path.size())
	
func _physics_process(delta):
	
	#print(path_idx)
	direction = position - path[path_idx]

	direction = move_and_slide(direction.normalized()*speed)
	path_idx += 1
	if path_idx >= path.size():
		path_idx = 0
		
func _process(delta):
	
	$AnimatedSprite.flip_h = direction.x > 0
	
	if abs(direction.length()) > 0:
		$AnimatedSprite.play("walk")
		
		