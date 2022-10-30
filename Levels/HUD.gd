extends Control

func _ready():
	pass


func _physics_process(_delta):
	$Score.text = "Score: " + str(Global.score)
	$Lives.text = "Lives: " + str(Global.lives)
	$Health.text = "Health: " + str(Global.health)
