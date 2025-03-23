extends Label


func _process(delta: float) -> void:
	var leading_zeroes = ""
	
	if ValueManager.score == 0:
		leading_zeroes = "0000"
	else:
		for i in 4 - floor(log(ValueManager.score) / log(10)):
			leading_zeroes += "0"
	
	text = leading_zeroes + str(ValueManager.score)
