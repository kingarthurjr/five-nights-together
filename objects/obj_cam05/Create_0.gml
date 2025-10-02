//Who to Display
if htme_globalGet("tfreddy") = 14 and htme_globalGet("freddySpecial")
{
	image_index = 1;
}
else if htme_globalGet("tbonnie") = 14 and htme_globalGet("bonnieSpecial")
{
	image_index = 2;
}
else if htme_globalGet("wfreddy") = 14 and htme_globalGet("freddySpecial")
{
	image_index = 3;
}
else if htme_globalGet("wbonnie") = 14 and htme_globalGet("bonnieSpecial")
{
	image_index = 4;
}
else if htme_globalGet("mimic") = 14 and htme_globalGet("bonnieSpecial")
{
	image_index = 5;
}
else
{
	image_index = 0;
}