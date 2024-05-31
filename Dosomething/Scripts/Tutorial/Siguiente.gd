extends TextureButton
@onready var Boton = $Siguiente2
@onready var Blabel = $Siguiente2/Dial
@onready var SpriteMujer = $"../MujerOficina"
@onready var SpriteHombre = $"../HombreOficina"

func _ready():
	if Main.genero == 2:
		SpriteMujer.visible = true
	else:
		SpriteHombre.visible = true

func _on_pressed():
	get_tree().change_scene_to_file("res://Scenas/escena_oficina.tscn")

func _on_mouse_entered():
	Boton.self_modulate = Color(1, 1, 1, 0.5)
	Blabel.self_modulate = Color(1, 1, 1, 0.5)

func _on_mouse_exited():
	Boton.self_modulate = Color(1, 1, 1, 1)
	Blabel.self_modulate = Color(1, 1, 1, 1)
