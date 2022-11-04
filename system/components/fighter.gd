extends VBoxContainer

var default_texture: Texture = preload("res://media/img/placeholder.jpg")

onready var fighter_name_label = $"%FighterNameLabel"
onready var fighter_health_label = $"%FighterHealthLabel"
onready var fighter_profile_pic = $"%ProfilePicture"

export var fighter_name: String = ""
var fighter_current_health: int
var fighter_max_health: int = 100
export var fighter_picture: Texture

func _ready():
	if !fighter_picture:
		fighter_picture = default_texture
	
	fighter_profile_pic.texture = fighter_picture
	
	if !fighter_name:
		fighter_name_label.text = "No Name"
	
	var label_string = str(fighter_name)
	
	fighter_name_label.text = fighter_name

	fighter_health_label.text = str(fighter_current_health) + "/" + str(fighter_max_health)
