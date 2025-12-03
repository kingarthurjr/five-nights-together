/// @description Open or Closed?

depth = -y;

if (htme_globalGet("tfreddy") = 15 or htme_globalGet("tfreddy") = 3) or (htme_globalGet("tbonnie") = 15 or htme_globalGet("tbonnie") = 3) or (htme_globalGet("tchica") = 15 or htme_globalGet("tchica") = 3) or (htme_globalGet("mangle") = 15 or htme_globalGet("mangle") = 3) or (htme_globalGet("wfreddy") = 15 or htme_globalGet("wfreddy") = 3) or (htme_globalGet("wbonnie") = 15 or htme_globalGet("wbonnie") = 3) or (htme_globalGet("wchica") = 15 or htme_globalGet("wchica") = 3) or (htme_globalGet("wfoxy") = 15 or htme_globalGet("wfoxy") = 3) or (htme_globalGet("puppet") = 15 or htme_globalGet("puppet") = 3) or (htme_globalGet("springtrap") = 15 or htme_globalGet("springtrap") = 3)
{
	image_index = 1
	closed = 1
}
else
{
	image_index = 0;
	closed = 0;
}

randomize();
amongus = irandom_range(1,100);