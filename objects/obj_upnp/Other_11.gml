/// @description  Remove port
if port_to_set>-1
{
    switch (os_type)
    {
        case os_windows: 
			execute_shell_simple(working_directory+"removeport.vbs",string(port_to_set)); 
			break;
        case os_linux: 
			execute_shell_simple(working_directory+"chmod","+x removeport.sh"); 
			execute_shell_simple(working_directory+"removeport.vbs",string(port_to_set)); 			
            break;
        case os_android: if upnp_running=1 Upnp_remove(port_to_set); break;
    }
}

