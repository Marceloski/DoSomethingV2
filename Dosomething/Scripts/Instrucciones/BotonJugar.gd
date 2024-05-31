extends TextureButton
signal play

func _on_mouse_entered():
	$BotonesJugar.self_modulate = Color(1, 1, 1, 0.5)

func _on_mouse_exited():
	$BotonesJugar.self_modulate = Color(1, 1, 1, 1)

func _on_pressed():
	emit_signal("play")
