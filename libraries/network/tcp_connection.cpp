#include <network/tcp_connection.hpp>

#include <iostream>

#include <boost/asio.hpp>

namespace IRPM {

    void tcp_print() {
        printf("tcp_connection\n");
    }

    void testasio() {
        boost::asio::io_context io;
        boost::asio::steady_timer t(io, boost::asio::chrono::seconds(5));
        t.wait();
        std::cout << "Hello, world\n";
        exit(0);
    }

}
