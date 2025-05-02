extends Node

const FILE_BEGIN = "res://levels/"

# Called when the node enters the scene tree for the first time.
func _ready():
	$"dog&Rain".play()
	
	await get_tree().create_timer(18.5).timeout
	
	var next_level_path = FILE_BEGIN + "level_1.tscn"
	get_tree().change_scene_to_file(next_level_path)
		
