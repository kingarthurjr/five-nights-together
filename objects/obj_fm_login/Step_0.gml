if GJGetLoginStatus() != ""
{
	button_text = "LOG OUT";
}
else
{
	button_text = "LOG IN";
}

event_inherited();