extends Camera2D

@export var target: Node2D  # Drag your sprite here in inspector
@export var smoothing_speed: float = 5.0

func _process(delta):
	if target:
		global_position = global_position.lerp(target.global_position, smoothing_speed * delta)
