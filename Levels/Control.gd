extends Control

func _ready():
	pass


func _on_Play_Again_pressed():
	Global.score = 0
	Global.lives = Global.max_lives
	Global.health = Global.max_health
	Global.level = 1
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
