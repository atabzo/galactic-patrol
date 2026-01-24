extends Sprite2D

@onready var name_input = $LineEdit
@onready var start_button = $Button

func _ready():

start_button.pressed.connect(_on_start_pressed)

func _on_start_pressed():
	if name_input.text.strip_edges() != "":
		playerdata.player_name = name_input.text
		get_tree().change_scene_to_file("res://scenes/quest.tscn")
