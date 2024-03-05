extends RigidBody2D

#TODO: You'll probably need an export_var for the particle effect here
@export var ParticleSystem: GPUParticles2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	ParticleSystem.emitting = true
	#find the game UI script and send it a message that the score has increased
	var ui_node = get_node('/root/Node2D/UI')
	ui_node.add_score()
	#and then destroy this object using queue_free
	pass


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	#print("OK")
	pass # Replace with function body.
