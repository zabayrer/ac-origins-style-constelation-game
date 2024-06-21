extends Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#create velocity, set it to zero
	var velocity = Vector2.ZERO

	#change velocity by player's input
	if Input.is_action_pressed("ui_up"):
		velocity.y += 10
	if Input.is_action_pressed("ui_down"):
		velocity.y += -10
	if Input.is_action_pressed("ui_left"):
		velocity.x += 10
	if Input.is_action_pressed("ui_right"):
		velocity.x += -10

	#normalize the velocity
	velocity = velocity.normalized()

	#move screen
	position += velocity * delta * 100
