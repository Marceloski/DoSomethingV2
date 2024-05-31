extends TextureButton
signal playdos

func _on_mouse_entered():
	$Sprite.self_modulate = Color(1, 1, 1, 0.5)

func _on_mouse_exited():
	$Sprite.self_modulate = Color(1, 1, 1, 1)

func _on_pressed():
	emit_signal("playdos")
