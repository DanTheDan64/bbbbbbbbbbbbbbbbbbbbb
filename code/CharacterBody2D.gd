extends CharacterBody2D

var grav = 0
var spd = 0
var max_spd = 600
var dir = 0


func _physics_process(delta):
	
	look_at(get_global_mouse_position())
	
	# Handle momentum.
	if Input.is_action_pressed("ui_accept"):
		spd = spd + 150 * delta
	else:
		spd = spd / 1.01 - 300 * delta
	
	if is_on_wall() or (spd > 400 and is_on_floor()):
		spd = spd - 2000 * delta
	
	# max/min spd
	if spd < 0:
		spd = 0
	if spd > max_spd + 300:
		spd = max_spd + 300
	if spd > max_spd:
		spd = spd - 150 * delta
	if spd > max_spd + 1:
		spd = spd - 250 * delta
	
	# push
	velocity = transform.x * spd
	
	# gravity
	if Input.is_action_pressed("ui_accept"):
		grav = 0
	else:
		grav = grav + 10000 * delta
	
	if grav > 80000:
		grav = 80000
	
	if not Input.is_action_pressed("ui_accept"):
		velocity.y += grav * delta
	
	move_and_slide()


func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body is CharacterBody2D:
		max_spd = 900
		spd = 900

func _on_area_2d_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	if body is CharacterBody2D:
		max_spd = 600


func _on_end_level_body_entered(body):
	if body is CharacterBody2D:
		watch.end_level = 1
