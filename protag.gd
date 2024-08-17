extends Node

var bicep
var initial_rest_length
var reaching_rest_length
var restitution_dampening

func _ready():
	bicep = $Bicep0
	if bicep:
		initial_rest_length = bicep.rest_length
		reaching_rest_length = 80
		restitution_dampening = 15

func _input(event):
	if event.is_action_pressed("reach"):
		if bicep:
			var direction_to_arm = ($LowerArm0.global_position - self.global_position).normalized();
			$LowerArm0.apply_central_force(direction_to_arm)
			bicep.rest_length = reaching_rest_length
		else:
			print("Bicep0 not found!")

func _physics_process(_delta):
	if bicep:
		bicep.rest_length += (initial_rest_length - bicep.rest_length)/restitution_dampening

