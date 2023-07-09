#include <iostream>
#include <string>

#include "socket.hpp"

using namespace std;

int main ()
{
	try
	{
		_sock_addr * sock_addr = new _sock_addr ("127.0.0.1", 10000);
		_sock_addr * sock_dest = new _sock_addr ();
        	_sock * sock = new _sock (SOCK_DGRAM);
		sock->bind (sock_addr);
		char * buffer = new char[100];
		sock->recv (sock_dest, buffer, 100);
		cout << "Received a message" << endl
			<< "\tsource IP: " << sock_dest->get_ip() << endl
			<< "\tsource port: " << sock_dest->get_port() << endl
			<< "\tdata: " << buffer << endl;
		delete buffer;
		delete sock;
		delete sock_addr;
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

