extends CanvasLayer
@onready var label = $Panel/Label

#Criando Array de Diálogo
var dialogo:Array[String] = ["bom dia"]

var index_control_dialogo = 0


func _ready():
	Global.uiNode = self;
	print(self.visible)

func _process(delta):
	manage_dialog()

func show_dialog(dialog_to_show: Array[String]):
	print("Exibindo dialogo novo")
	dialogo = dialog_to_show
	index_control_dialogo = 0;
	visible = true

func _input(event):
	if event.is_action_pressed("skip_dialog"):
		index_control_dialogo += 1

func manage_dialog():
	if index_control_dialogo < dialogo.size():
		label.text = dialogo[index_control_dialogo]
	else:
		print("Tchau")
		$".".visible = false
		index_control_dialogo = 0
		
		
