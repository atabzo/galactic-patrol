extends Sprite2D

@export var scale_amount: float = 0.05
@export var animation_speed: float = 4.0

var time_passed: float = 0.0
var base_scale: Vector2

func _ready():
	base_scale = scale

func _process(delta):
	time_passed += delta * animation_speed
	var pulse = sin(time_passed)
	scale = base_scale * (1.0 + pulse * scale_amount)

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			# Check if the click is on this sprite
			var mouse_pos = get_global_mouse_position()
			if get_rect().has_point(to_local(mouse_pos)):
				get_tree().quit()
