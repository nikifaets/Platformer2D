extends Node
const LASER = preload("res://Abilities/Player/Shoot/Bullet.tscn")

func _input(event):
	

	if event is InputEventMouseButton:
		if event.get_button_index() == 1 and not event.pressed:
			fire(owner.get_global_mouse_position())
			
func fire(target):
	
	var bullet = LASER.instance()
	var direction = target - owner.position
	
	bullet.shoot(owner.position-Vector2(0,30), direction)
	owner.get_parent().add_child(bullet)