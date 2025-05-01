extends Area2D

var darkmessages = ["your_fault","stupid_dog"]

func _on_body_entered(body):
	if body.is_in_group("Player"):
		$Sprite2D.hide()
		
		var anim = darkmessages[randi() % darkmessages.size()]
		darkmessages.erase(anim)
		$darkMessages.visible = true
		$darkMessages.play(anim)
		$"../jumpscareSound".play()
		
		await get_tree().create_timer(2.5).timeout
		$darkMessages.visible = false
		
