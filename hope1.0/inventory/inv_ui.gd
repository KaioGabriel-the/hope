extends Control

#script de quando o inventario está aberto e fechado
@onready var inv:Inv = preload("res://inventory/inventy_player.tres")
@onready var slots : Array = $NinePatchRect/GridContainer.get_children()

var is_open = false

func _ready():
	update_slots()
	close()

func update_slots():
	for i in range(min(inv.items.size(), slots.size())):
		slots[i].update(inv.items[i])

func  _process(delta):
	if Input.is_action_just_pressed("]}[rendering]textures/canvas_textures/default_texture_filter"):
		if is_open:
			close()
		else:
			open()

func open():
	visible = true
	is_open = true

func  close():
	visible = false
	is_open = false
