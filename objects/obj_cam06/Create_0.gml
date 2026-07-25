current = false;
depth = -12;
//Who to Display
image_index = 0;
if htme_globalGet("tfreddy") = 15 and htme_globalGet("freddySpecial")
{
	image_index = 1;
}
else if htme_globalGet("tbonnie") = 15 and htme_globalGet("bonnieSpecial")
{
	image_index = 2;
}
else if htme_globalGet("wfreddy") = 15 and htme_globalGet("freddySpecial")
{
	image_index = 3;
}
else if htme_globalGet("wbonnie") = 15 and htme_globalGet("bonnieSpecial")
{
	image_index = 4;
}
else if htme_globalGet("mimic") = 15 and htme_globalGet("bonnieSpecial")
{
	image_index = 5;
}
else
{
	image_index = 0;
}