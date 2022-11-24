extends Node2D


var bananas = preload("res://Bananas.tscn")
var lunchBoxes = preload("res://LunchBoxes.tscn")

func destroy():
	if self.get_child_count() > 0:
		self.get_child(0).queue_free()
		self.get_child(1).queue_free()
	
	

func respawn():
	var bananas_instance = bananas.instance()
	var lunchBoxes_instance = lunchBoxes.instance()
	
	self.add_child(bananas_instance)
	self.add_child(lunchBoxes_instance)
