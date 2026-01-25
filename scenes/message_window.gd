extends Panel
@onready var flower = $flower # Path to your second star


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	flower.rotation += 0.1 * delta
