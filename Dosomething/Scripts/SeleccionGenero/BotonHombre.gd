extends TextureButton
var Press:bool = false

func _on_mouse_entered():
	$PersonajesH.self_modulate = Color(1, 1, 1, 0.5)

func _on_mouse_exited():
	if !Press:
		$PersonajesH.self_modulate = Color(1, 1, 1, 1)

func _on_mujer_pressed():
	Press = false
	$PersonajesH.self_modulate = Color(1, 1, 1, 1)
	
func _on_pressed():
	Press = true

