extends Node3D


func animation_toggled(value: bool) -> void:
	for sample: FloatAndSpin in get_children():
		sample.float_enabled = value
		sample.spin_enabled = value
