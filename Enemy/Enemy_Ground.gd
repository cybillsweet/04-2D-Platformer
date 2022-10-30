extends KinematicBody2D

export var speed = 1
export var damage = 20
var direction = 1
var velocity = Vector2.ZERO

func _physics_process(_delta):
	if direction > 0 and !$Sprite.flip_h:
		$Sprite.flip_h = true
	if direction < 0 and $Sprite.flip_h:
		$Sprite.flip_h = false
		
	velocity.x += direction * speed
	move_and_slide_with_snap(velocity, Vector2.UP)
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider.name == "Platform"or collision.collider.name == "Ground":
			velocity.x = 0
			direction *= -1
		if collision.collider.name == "Player":
			collision.collider.do_damage(damage)
