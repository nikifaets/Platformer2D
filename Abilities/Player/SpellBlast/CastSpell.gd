extends Node
const SPELLBLAST = preload("res://Abilities/Player/SpellBlast/SpellBlast.tscn")

func _input(event):
	
	if Input.is_action_just_pressed("spell_1"):
		
		print("cast spellblast")
		var spell_blast = SPELLBLAST.instance()
		spell_blast.position = owner.position
		owner.get_parent().add_child(spell_blast)
		
