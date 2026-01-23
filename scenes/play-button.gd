extends Button

# Path to the scene you want to load
@export var next_scene: String = "res://scenes/quest.tscn"

func _ready():
	pressed.connect(_on_button_pressed)

func _on_button_pressed():
	get_tree().change_scene_to_file(next_scene)
