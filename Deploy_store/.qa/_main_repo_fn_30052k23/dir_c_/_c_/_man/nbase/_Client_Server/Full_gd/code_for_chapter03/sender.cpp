#include <iostream>
#include <string>

#include "socket.hpp"

using namespace std;

int main ()
{
	try
	{
		_sock_addr * sock_dest = new _sock_addr ();
		sock_dest->set_ip ("127.0.0.1");
		sock_dest->set_port (10000);
        	_sock * sock = new _sock (SOCK_DGRAM);
		char * buffer = "This is a test string";
		sock->send (sock_dest, buffer, strlen (buffer)+1);
		delete sock;
		delete sock_dest;
	}
	catch (_sock_exception & err)
	{
		err.print ();
	}
	catch (...)
	{
		cerr << "Unknown error" << endl;
	}
}

