extends TextureButton
@onready var Boton = $Siguiente
@onready var Blabel = $Siguiente/Dial

func _on_mouse_entered():
	Boton.self_modulate = Color(1, 1, 1, 0.5)
	Blabel.self_modulate = Color(1, 1, 1, 0.5)

func _on_mouse_exited():
	Boton.self_modulate = Color(1, 1, 1, 1)
	Blabel.self_modulate = Color(1, 1, 1, 1)
