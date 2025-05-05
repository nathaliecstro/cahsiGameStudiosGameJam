extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.score != 0:
		Global.set_score(0)


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/gameInstructions.tscn")


func _on_quit_pressed():
	get_tree().quit()
