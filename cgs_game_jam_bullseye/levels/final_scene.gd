extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$"dog&Rain".play()
	
	await get_tree().create_timer(18.5).timeout
	
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn") 
		
