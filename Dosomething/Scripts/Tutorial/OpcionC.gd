extends TextureButton
@onready var sprite = $"Opcion C"
@onready var label = $"Opcion C/Dial"

func _on_mouse_entered():
	label.self_modulate = Color(1, 1, 1, 0.5)
	sprite.self_modulate = Color(1, 1, 1, 0.5)


func _on_mouse_exited():
	sprite.self_modulate = Color(1, 1, 1, 1)
	label.self_modulate = Color(1, 1, 1, 1)
