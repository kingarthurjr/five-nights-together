/// @description Open or Closed?

depth = -y;

if (htme_globalGet("tfreddy") = 14 or htme_globalGet("tfreddy") = 2) or (htme_globalGet("tbonnie") = 14 or htme_globalGet("tbonnie") = 2) or (htme_globalGet("tchica") = 14 or htme_globalGet("tchica") = 2) or (htme_globalGet("mangle") = 14 or htme_globalGet("mangle") = 2) or (htme_globalGet("wfreddy") = 14 or htme_globalGet("wfreddy") = 2) or (htme_globalGet("wbonnie") = 14 or htme_globalGet("wbonnie") = 2) or (htme_globalGet("wchica") = 14 or htme_globalGet("wchica") = 2) or (htme_globalGet("wfoxy") = 14 or htme_globalGet("wfoxy") = 2) or (htme_globalGet("puppet") = 14 or htme_globalGet("puppet") = 2) or (htme_globalGet("springtrap") = 14 or htme_globalGet("springtrap") = 2)
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