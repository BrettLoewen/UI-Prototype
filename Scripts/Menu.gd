extends Control

@export var submenus: Array[Control]
@export var menu: Control
@export var firstMenu: Control
@export var openButton: Control
@export var closeButton: Control
@export var backButton: Control

func _ready():
	Close()

func OpenMenu():
	menu.show()
	firstMenu.show()
	backButton.hide()
	for submenu in submenus:
		submenu.hide()

func OpenSubmenu(index: int):
	firstMenu.hide()
	backButton.show()
	submenus[index].show()

func Back():
	firstMenu.show()
	backButton.hide()
	for submenu in submenus:
		submenu.hide()

func Close():
	menu.hide()
	openButton.show()
