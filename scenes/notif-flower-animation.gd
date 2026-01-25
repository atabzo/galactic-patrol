extends Sprite2D

# Sway parameters
@export var sway_amount: float = 15.0  # Maximum rotation angle in degrees
@export var sway_speed: float = 1.5    # How fast it sways
@export var bob_amount: float = 5.0    # Vertical bobbing in pixels
@export var bob_speed: float = 2.0     # How fast it bobs

var time: float = 0.0
var random_offset: float = 0.0

func _ready():
	# Add random offset so multiple flowers don't sync perfectly
	random_offset = randf() * TAU

func _process(delta):
	time += delta
	
	# Gentle rotation sway using sine wave
	var sway = sin(time * sway_speed + random_offset) * sway_amount
	rotation_degrees = sway
	
	# Subtle vertical bobbing with different frequency
	var bob = sin(time * bob_speed + random_offset * 0.5) * bob_amount
	position.y = position.y - bob + bob  # This maintains relative position
	
	# Alternative: If you want actual position change, store original position in _ready()
	# and use: position.y = original_y + bob
