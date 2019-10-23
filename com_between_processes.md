We looked at how the Internet Protocol (IP) essentially provides the
inter-network communication services necessary for what we might think of as a
minimum viable internet.

An important thing to understand about the Internet Protocol, and its system
of addressing, is that it is intended to provide communication between
hosts, or devices. These hosts can potentially be on the same local network, or
on different local networks halfway around the world from each other.

Either way, we can use IP to get a message from one host to the other, but not
any more than that.

If IP can get us as far as the host, how do we provide communication between
an application running on one host and an application running on another host
(or potentially between two different applications or processes running on the
same host)?

*Multiplexing and Demultiplexing*

We can think of different applications or processes as distinct _channels_ for
communication on a host machine.

Source and destination ip addresses are contained in the packet header and can
be used to identify the host machines. This effectively creates a communication
channel between hosts.

So, although we have multiple communication channels _on_ a host, with IP
addresses we only have a single channel _between_ hosts. What we need is a way
to transmit these multiple data inputs over this single host-to-host channel
and then somehow separate them out at the other end.
