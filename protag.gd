extends Node

var bicep
var initial_rest_length
var reaching_rest_length
var restitution_dampening

func _ready():
	bicep = $Bicep0
	if bicep:
		initial_rest_length = bicep.rest_length
		reaching_rest_length = 300
		restitution_dampening = 10


func _input(event):
	if event.is_action_pressed("reach"):
		if bicep:
			bicep.rest_length = reaching_rest_length
		else:
			print("Bicep0 not found!")

func _physics_process(_delta):
	if bicep:
		bicep.rest_length += (initial_rest_length - bicep.rest_length)/restitution_dampening

