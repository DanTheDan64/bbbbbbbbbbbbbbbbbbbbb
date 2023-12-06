extends Area2D
var coll = 0
var dir = 0
var ro = rotation_degrees
# Called when the node enters the scene tree for the first time.
func _ready():
	ro = rotation_degrees

func _process(delta):
	#opening and closing switches
	if coll == 1:
		if dir < 90:
			dir = dir + 30 * delta
	
	if coll == 0:
		if dir > 0:
			dir = dir - 30 * delta
	
	#rounding dir cur 89.998 is annoying
	if dir < 90.5 and dir > 89.5 and coll == 1:
		dir = 90
	if dir < 0.5 and dir > -0.5 and coll == 0:
		dir = 0
	
	
	rotation_degrees = ro + dir
	


#trigger switch opening
func _on_body_entered(body):
	if body is CharacterBody2D and coll == 0 and dir == 0:
		coll = 1
		$Timer.start(5)

#trigger switch to close
func _on_timer_timeout():
	coll = 0
	$Timer.stop()

