CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

targetX := 0
targetY := 0

markPosition() {
	global targetX
	global targetY
	MouseGetPos, xpos, ypos 
	targetX := xpos
	targetY := ypos
}

moveItem() {
	global targetX
	global targetY
	if (targetX == 0) {
		Return
	}
	MouseGetPos, xpos, ypos 
	MouseClickDrag, left, xpos, ypos, targetX, targetY, 2
	MouseMove, xpos, ypos, 0
}

doubleClick() {
	MouseClick, left
	MouseClick, left
}

XButton2::m
^d::doubleClick()
^b::markPosition()
^f::moveItem()
^q::ExitApp