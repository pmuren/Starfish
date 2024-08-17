extends Area2D


func _on_body_entered(body):
	if(body.name == "Protag"):
		#$CollisionShape2D.reparent(body)
		$CollisionShape2D.call_deferred("reparent", body)
		self.call_deferred("queue_free")
		print("HIT!")
