extends TextureButton
signal play
signal playdos

func _on_mouse_entered():
	$BotonesJugar.self_modulate = Color(1, 1, 1, 0.5)

func _on_mouse_exited():
	$BotonesJugar.self_modulate = Color(1, 1, 1, 1)

func _on_pressed():
	if Main.genero > 0:
		emit_signal("play")

func _on_mujer_pressed():
	Main.genero = 2
	
func _on_hombre_pressed():
	Main.genero = 1

func _on_intrucciones_playdos():
	emit_signal("playdos")
