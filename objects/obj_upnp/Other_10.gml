/// @description  Add port
if port_to_set>-1
{
    switch (os_type)
    {
        case os_windows: 
			execute_shell_simple(working_directory+"addport.vbs",string(port_to_set)); 
			break;
        case os_linux: 
			execute_shell_simple(working_directory+"chmod","+x addport.sh"); 
			execute_shell_simple(working_directory+"addport.vbs",string(port_to_set)); 
            break;
    }
}

