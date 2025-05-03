extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$wasd.play()
	$spaceBar.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://levels/level_1.tscn")
	$wasd.stop()
	$spaceBar.stop()
