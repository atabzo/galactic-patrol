extends Button

@export var next_scene: String = "res://scenes/ending_scene.tscn"

func _ready():
	pressed.connect(_on_button_pressed)
	
func _on_button_pressed():
	get_tree().change_scene_to_file(next_scene)
