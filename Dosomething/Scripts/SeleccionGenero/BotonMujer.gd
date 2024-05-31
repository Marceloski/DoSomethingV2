extends TextureButton
var Press = false

func _on_mouse_entered():
	$PersonajesM.self_modulate = Color(1, 1, 1, 0.5)

func _on_mouse_exited():
	if !Press:
		$PersonajesM.self_modulate = Color(1, 1, 1, 1)

func _on_hombre_pressed():
	Press = false
	$PersonajesM.self_modulate = Color(1, 1, 1, 1)

func _on_pressed():
	Press = true
