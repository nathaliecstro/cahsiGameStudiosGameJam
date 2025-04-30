extends Camera2D

@export var target: NodePath


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if has_node(target):
		var player = get_node(target)
		offset.x = player.global_position.x 
