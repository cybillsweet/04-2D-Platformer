extends Node

var score = 0
var lives = 5
var max_lives = 5
var health = 100
var max_health = 100
var level = 1

var death_zone = 500

func _ready():
	pass
	
	
func increase_score(s):
	score += s

func decrease_health(h):
	health -= h

func decrease_lives(l):
	lives -= l
	health = max_health
	if lives <= 0:
		get_tree().change_scene("res://Levels/Game_Over.tscn")
