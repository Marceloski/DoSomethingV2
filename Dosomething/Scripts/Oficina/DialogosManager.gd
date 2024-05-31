extends Node2D
#Labels
@onready var MainLabel = $NubeSecretaria/SusanaDialogo
@onready var CashLabel = $LabelsStats/VBoxContainer/Dinero
@onready var HappyLabel = $"LabelsStats/Felicidad"
@onready var Ganancias = $LabelsStats/Ganancias
@onready var EmpleadosLabel = $LabelsStats/VBoxContainer/Empleados
@onready var ConsecuenciaLabel = $Consecuencia/ConsecuenciaDialogo
@onready var OpcionA = $"../Botones/OpcionA/Opcion A/Dial"
@onready var OpcionB = $"../Botones/OpcionB/Opcion B/Dial"
@onready var OpcionC = $"../Botones/OpcionC/Opcion C/Dial"
var currentText
var dialogo_id = 1

func _ready():
	ocultarConsecuencia()

func _process(delta):
	coordinadorLabels()
	mostrar_dialogo(dialogo_id)
	
func tomarOpcion(index):
	var dialogo = get_ide(dialogo_id)
	if dialogo:
		var opciones = dialogo["optiones"]
		if opciones and index < opciones.size():
			var opcion = opciones[index]
			aplicar_debuffos(opcion)

func aplicar_debuffos(opcion):
	if opcion.has("felicidad"):
		Main.Felicidad += opcion["felicidad"]
	if opcion.has("dinero"):
		Main.Dinero += opcion["dinero"]
	if opcion.has("empleados"):
		Main.Empleados += opcion["empleados"]
	if opcion.has("consecuencia"):
		ConsecuenciaLabel.text = opcion["consecuencia"]

#Actualiza los marcadores
func coordinadorLabels():
	if Main.Felicidad > 10:
		Main.Felicidad =10
	EmpleadosLabel.text = str(Main.Empleados)
	Ganancias.text = str(Main.Ganancias)
	HappyLabel.text = str(Main.Felicidad)
	CashLabel.text = "$"+str(Main.Dinero)
	
func mostrar_dialogo(Ide):
	
	Ide = dialogo_id
	var dialogo = get_ide(Ide)
	if dialogo:
		MainLabel.text = dialogo["text"]
	if dialogo.has("optiones"):
		var options = dialogo["optiones"]
		OpcionA.text = options[0]["text"]
		OpcionB.text = options[1]["text"]
		OpcionC.text = options[2]["text"]
	else:
		print("Sin Dialogo")
	
func get_ide(id):
	for dialogue in Main.dialogues:
		if dialogue["id"] == id:
			return dialogue
	return null 

func _on_siguiente_pressed():
	dialogo_id += 1
	revelarOpcionesProblema()
	ocultarConsecuencia()
	print(dialogo_id)

func _on_opcion_a_pressed():
	tomarOpcion(0)
	ocultarOpcionesProblema()
	revelarConsecuencia()

func _on_opcion_b_pressed():
	tomarOpcion(1)
	ocultarOpcionesProblema()
	revelarConsecuencia()

func _on_opcion_c_pressed():
	tomarOpcion(2)
	ocultarOpcionesProblema()
	revelarConsecuencia()

#region Ocultador
func ocultarConsecuencia():
	$Consecuencia.visible = false
	$"../Siguiente".visible = false

func revelarConsecuencia():
	$Consecuencia.visible = true
	$"../Siguiente".visible = true

func ocultarOpcionesProblema():
	MainLabel.visible = false
	$"../Botones".visible = false
	
func revelarOpcionesProblema():
	MainLabel.visible = true
	$"../Botones".visible = true
#endregion


