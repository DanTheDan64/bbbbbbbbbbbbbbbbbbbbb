extends Panel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$".".position = $"../CharacterBody2D".position
	rotation_degrees = 0
	position.y -= 320
	position.x -= 600

