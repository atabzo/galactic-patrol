extends Area2D

@onready var sprite: Sprite2D = $DecorativeStars
@onready var star_two = $DecorativeStars/DecorativeStars2 # Path to your second star

var original_scale: Vector2
var hover_scale: Vector2

func _ready():
	original_scale = sprite.scale
	hover_scale = sprite.scale * 1.1
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)


func _on_mouse_entered():
	var tween = create_tween()
	tween.tween_property(sprite, "scale", hover_scale, 0.2).set_trans(Tween.TRANS_SINE)

func _on_mouse_exited():
	var tween = create_tween()
	tween.tween_property(sprite, "scale", original_scale, 0.2).set_trans(Tween.TRANS_SINE)
