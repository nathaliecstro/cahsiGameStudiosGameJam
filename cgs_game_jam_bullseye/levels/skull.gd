extends Area2D

const FILE_BEGIN = "res://levels/"

func _on_body_entered(body):
		if body.is_in_group("Player"):
			var next_level_path = FILE_BEGIN + "text_scene.tscn"
			get_tree().change_scene_to_file(next_level_path)
			$"../bgMusic".stop()
