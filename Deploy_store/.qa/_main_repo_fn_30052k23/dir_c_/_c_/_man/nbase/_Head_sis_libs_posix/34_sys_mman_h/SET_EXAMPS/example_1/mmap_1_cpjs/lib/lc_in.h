#ifndef lc_in
#define lc_in
#include "h_1.h"

int make_socket_lc_in (uint16_t port);
void init_sockaddr_lc_in (struct sockaddr_in *name, const char *hostname, uint16_t port);


#endif