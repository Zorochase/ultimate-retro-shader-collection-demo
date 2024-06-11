extends MeshInstance3D


@onready
var _animation_player: AnimationPlayer = $AnimationPlayer


func animation_toggled(value: bool) -> void:
	if value:
		_animation_player.play()
	else:
		_animation_player.pause()
