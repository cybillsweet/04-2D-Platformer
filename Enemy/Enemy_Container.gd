extends Node2D

onready var Bat = load("res://Enemy/Bat.tscn")

func _physics_process(_delta):
	if not has_node("Bat"):
		var bat = Bat.instance()
		add_child(bat)
		bat.name = 'Bat'
