extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready():
	self.pressed.connect(self._button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


#If anything is open, close it. Otherwise, open the settings menu.
func _button_pressed():
	if get_parent().open_ui > 0:
		get_parent().hide_all_ui()
	else:
		get_parent().get_node("SettingsMenu").visible = !get_parent().get_node("SettingsMenu").visible


func _input(event):
	if event.is_action_pressed("Settings"):
		_button_pressed()
