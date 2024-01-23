extends ColorRect

var animationPlayer: AnimationPlayer

func _ready():
	animationPlayer = $AnimationPlayer
	Close()

func Close():
	animationPlayer.play("fade_out")
	set_process(false)

func Open():
	animationPlayer.play("fade_in")
	set_process(true)
