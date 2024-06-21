extends Sprite2D

var current_constellation = "big_dipper"

# Called when the node enters the scene tree for the first time.
func _ready():
	rotation = randi_range(0, 360)
	
	#i guess use an array of all the constellations and pick randomly from them

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if Input.is_action_pressed("rotate_cw"):
		rotation += 1 * delta
	if Input.is_action_pressed("rotate_ccw"):
		rotation += -1 * delta
	
	var velocity = Vector2.ZERO

	#change velocity by player's input
	if Input.is_action_pressed("ui_up"):
		velocity.y += -10
	if Input.is_action_pressed("ui_down"):
		velocity.y += 10
	if Input.is_action_pressed("ui_left"):
		velocity.x += -10
	if Input.is_action_pressed("ui_right"):
		velocity.x += 10

	#normalize the velocity
	velocity = velocity.normalized()

	#move constellation
	position += velocity * delta * 100



func _on_big_dipper_area_area_entered(area):
	if current_constellation == "big_dipper" and rotation < 240 and rotation > 200:
		print("win!")
