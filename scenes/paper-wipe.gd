extends CanvasLayer

signal transition_finished

@onready var animation_player = $AnimationPlayer
@onready var color_rect = $ColorRect

func transition_to(scene_path: String):
	# Make sure we're visible
	show()
	
	# Play the wipe-in animation
	animation_player.play("wipe_in")
	await animation_player.animation_finished
	
	# Change the scene
	get_tree().change_scene_to_file(scene_path)
	
	# Play the wipe-out animation
	animation_player.play("wipe_out")
	await animation_player.animation_finished
	
	transition_finished.emit()
	hide()
