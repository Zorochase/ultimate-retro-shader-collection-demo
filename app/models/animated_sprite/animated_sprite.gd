@tool
extends AnimatedSprite3D


@onready
var shader_material: ShaderMaterial = material_override as ShaderMaterial


func _process(_delta: float) -> void:
	shader_material.set_shader_parameter(
		"albedo_texture", sprite_frames.get_frame_texture(animation, frame))

	shader_material.set_shader_parameter("billboard_mode", billboard)


func animation_toggled(value: bool) -> void:
	if value:
		play("default")
	else:
		pause()
