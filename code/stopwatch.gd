extends Node2D
var stopwatch_ = 0
var end_level = 0
var lvl_1_record = 1000
var lvl_2_record = 1000
var lvl_3_record = 1000
var lvl_4_record = 1000
var lvl_5_record = 1000
var lvl_6_record = 1000
var test_lvl_2_record = 1000
var scene = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# count stopwatch
	scene = get_tree().current_scene.name 
	if watch.end_level == 0:
		watch.stopwatch_ = watch.stopwatch_ + 1 * delta
	
	# set record
	if watch.end_level == 1:
		if scene == ("test_lvl_2"):
			if watch.test_lvl_2_record > watch.stopwatch_:
				watch.test_lvl_2_record = watch.stopwatch_
		if scene == ("lvl_1"):
			if watch.lvl_1_record > watch.stopwatch_:
				watch.lvl_1_record = watch.stopwatch_
		if scene == ("lvl_2"):
			if watch.lvl_2_record > watch.stopwatch_:
				watch.lvl_2_record = watch.stopwatch_
		if scene == ("lvl_3"):
			if watch.lvl_3_record > watch.stopwatch_:
				watch.lvl_3_record = watch.stopwatch_
		if scene == ("lvl_4"):
			if watch.lvl_4_record > watch.stopwatch_:
				watch.lvl_4_record = watch.stopwatch_
		if scene == ("lvl_5"):
			if watch.lvl_5_record > watch.stopwatch_:
				watch.lvl_5_record = watch.stopwatch_
		if scene == ("lvl_6"):
			if watch.lvl_6_record > watch.stopwatch_:
				watch.lvl_6_record = watch.stopwatch_
	
	print(watch.end_level)


func _on_tree_entered():
	watch.stopwatch_ = 0
