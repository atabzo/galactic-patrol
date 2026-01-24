extends Sprite2D

var time = 0.0
var rotation_speed = 8
var rotation_amount = 0.09


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time+= delta
	rotation = sin(time * rotation_speed) * rotation_amount
