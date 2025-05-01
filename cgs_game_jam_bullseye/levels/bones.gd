extends Area2D


func _on_body_entered(body):
	if body.is_in_group("Player"):
		$Sprite2D.hide()
		Global.add_score(1)
		
