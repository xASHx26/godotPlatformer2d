extends Node

var score =0

@onready var scorelabe = $scorelabe

func add_point():
	score +=1
	print(score)
	scorelabe.text= "You collected "+str(score)+" coins"
