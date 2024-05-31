extends Node2D
@onready var sprite = $Siguiente/Siguiente
@onready var label = $Siguiente/Siguiente/Label
@onready var anim = $AnimationPlayer

func _ready():
	anim.play("Comic")

func _on_siguiente_pressed():
	get_tree().change_scene_to_file("res://Scenas/escena_tutorial.tscn")
	
func _on_siguiente_mouse_entered():
	label.self_modulate = Color(1, 1, 1, 0.5)
	sprite.self_modulate = Color(1, 1, 1, 0.5)

func _on_siguiente_mouse_exited():
	sprite.self_modulate = Color(1, 1, 1, 1)
	label.self_modulate = Color(1, 1, 1, 1)
