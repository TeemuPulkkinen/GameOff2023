extends CharacterBody2D

var speed : float = 200

func _physics_process(delta):
	
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += speed * delta
	elif Input.is_key_pressed(KEY_UP):
		velocity.y -= speed * delta
	elif Input.is_key_pressed(KEY_LEFT):
		velocity.x -= speed * delta
	elif Input.is_key_pressed(KEY_RIGHT):
		velocity.x += speed * delta
	else:
		velocity.x = 0
		velocity.y = 0

	move_and_slide()
