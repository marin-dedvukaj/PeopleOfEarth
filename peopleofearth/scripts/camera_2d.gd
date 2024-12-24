extends Camera2D
@export var follow_speed = 5.0
@export var target: Node2D

func _ready():
	pass


func _process(delta: float) -> void:
	if target and target is Node2D:
		global_position = global_position.lerp(target.global_position, follow_speed * delta)
	pass
