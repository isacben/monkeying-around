extends Node2D


var bananas = preload("res://Bananas.tscn")


func destroy():
	if self.get_child_count() > 0:
		self.get_child(0).queue_free()


func respawn():
	var bananas_instance = bananas.instance()
	self.add_child(bananas_instance)
