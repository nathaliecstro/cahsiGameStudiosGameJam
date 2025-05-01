extends Node2D

const FILE_BEGIN = "res://levels/"

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play()

	await get_tree().create_timer(8.0).timeout
	
	var next_level_path = FILE_BEGIN + "final_scene.tscn"
	get_tree().change_scene_to_file(next_level_path)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
