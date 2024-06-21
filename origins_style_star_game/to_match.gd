extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation = randi_range(0, 360)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if Input.is_action_pressed("rotate_cw"):
		rotation += 1 * delta
	if Input.is_action_pressed("rotate_ccw"):
		rotation += -1 * delta
