extends Node2D

var speed = 500
var tilt_angle = 30  # Maximum tilt in degrees
var tilt_speed = 5   # How quickly it tilts/returns to upright

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * speed * delta
	
	# Tilt the rocket based on horizontal movement
	var target_rotation = 0
	if direction.x != 0:
		target_rotation = direction.x * deg_to_rad(tilt_angle)
	
	# Smoothly interpolate to the target rotation
	rotation = lerp_angle(rotation, target_rotation, tilt_speed * delta)
	
