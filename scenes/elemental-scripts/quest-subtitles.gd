extends Label

@export var player: Node2D  # This creates a slot in the Inspector
var target_position: Vector2

func _ready():
	target_position = Vector2(0, 10)
	# Play the pulse animation
	$AnimationPlayer.play("pulse")

func _process(_delta):
	if player:
		var distance = player.position.distance_to(target_position)
		var direction = (target_position - player.position).normalized()
		var direction_text = get_direction_text(direction)
		text = "Navigate %s - %.0f units away" % [direction_text, distance]
	else:
		text = "Waiting for player..."

func get_direction_text(dir: Vector2) -> String:
	var angle = rad_to_deg(dir.angle())
	if angle > -45 and angle <= 45:
		return "EAST →"
	elif angle > 45 and angle <= 135:
		return "SOUTH ↓"
	elif angle > 135 or angle <= -135:
		return "WEST ←"
	else:
		return "NORTH ↑"
