extends Node2D
@onready var reproductor = $AnimationPlayer
@export var escenauno:String
@export var escenados:String
var escenaactual = escenauno
var dentro = "fadein"

func _ready():
	visible = true 
	
func _on_animation_player_animation_finished(anim):
	if anim == dentro:
		visible = false
		get_tree().change_scene_to_file(escenaactual)

func reproducir():
	reproductor.play(dentro)
	
func _on_jugar_buton_play():
	escenaactual = escenauno
	reproducir()

func _on_instrucciones_playdos():
	escenaactual = escenados
	reproducir()

func _on_jugar_buton_playdos():
	_on_instrucciones_playdos()
