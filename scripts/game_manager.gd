extends Node

var score = 0

@onready var label: Label = $"../player/Camera2D/Label"


func addscore (X):
	score += X
	print(score); 
	label.text = "score: " + str(score) 
