extends Control
#TODO: Add a expert_var for fish object to spawn
@export var fish_object: Resource
func score():
	var min_score = 1
	var max_score = 10
	pass

func add_score():
	var max_score = 10
	#show new score on page
	
	#if score is at max - return to main page
	if score == max_score:
		get_tree().change_scene_to_file("res://scenes/menu.tscn/")
	#if not at max - spawn a new fish
	if score < max_score:
		var newfish = fish_object.instantiate()
		add_child(newfish)
	pass
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_button_pressed():
	pass
