extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

func _on_lvl_1_pressed():
	pass # Replace with function body.

func _on_lvl_2_pressed():
	pass # Replace with function body.

func _on_lvl_3_pressed():
	pass # Replace with function body.

func _on_lvl_4_pressed():
	pass # Replace with function body.

func _on_lvl_5_pressed():
	pass # Replace with function body.

func _on_lvl_6_pressed():
	pass # Replace with function body.

func _on_lvl_7_pressed():
	get_tree().change_scene_to_file("res://scenes/test_lvl_2.tscn")
