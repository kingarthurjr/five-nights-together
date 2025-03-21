//Locations for the bar
if currentSelection = 0
{
	targetY = 540;
}
if currentSelection = 1
{
	targetY = 187;
}
if currentSelection = 2
{
	targetY = 283;
}
if currentSelection = 3
{
	targetY = 379;
}

//Ease Out
currentSpeed = (abs(targetY-y))*0.3;

//If not where should be, move.
if y > targetY
{
	y -= currentSpeed;
}
if y < targetY
{
	y += currentSpeed;
}