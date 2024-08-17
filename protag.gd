extends RigidBody2D

var roll_force

func _ready():
	roll_force = 8000

#func _input(event):

func _physics_process(_delta):
	if(Input.is_action_pressed("roll_left")):
		apply_torque(roll_force * -1)
		
	if(Input.is_action_pressed("roll_right")):
		apply_torque(roll_force * 1)


