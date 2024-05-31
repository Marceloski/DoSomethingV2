extends TextureButton
signal playdos
#BOTON DE ATRAS 

func _on_mouse_entered():
	$BotonesAtras.self_modulate = Color(1, 1, 1, 0.5)

func _on_mouse_exited():
	$BotonesAtras.self_modulate = Color(1, 1, 1, 1)

func _on_pressed():
	emit_signal("playdos")
