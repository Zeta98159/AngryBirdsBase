extends RigidBody2D

#TODO: You'll probably need an export_var for the particle effect here
@export var ParticleSystem: GPUParticles2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _process(_process):
	pass


func _on_body_entered(_process):
	ParticleSystem.emitting = 1
	#find the game UI script and send it a message that the score has increased
	var ui_node = get_node('/root/Node2D/UI')
	ui_node.add_score()
	#and then destroy this object using queue_free


func _on_body_shape_entered(_process):
#print("OK")
		pass
