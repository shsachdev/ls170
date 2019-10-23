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

# Multiplexing and Demultiplexing

We can think of different applications or processes as distinct _channels_ for
communication on a host machine.

Source and destination ip addresses are contained in the packet header and can
be used to identify the host machines. This effectively creates a communication
channel between hosts.

So, although we have multiple communication channels _on_ a host, with IP
addresses we only have a single channel _between_ hosts. What we need is a way
to transmit these multiple data inputs over this single host-to-host channel
and then somehow separate them out at the other end.

In the context of a communication network, this idea of transmitting multiple
signals over a single channel is known at _multiplexing_, with _demultiplexing_
being the reverse process.

It is a general concept that can be applied in lots of contexts within communications
networks.

# Ports

In simple terms, a port is an identifier for a specific process running on a host.
This identifier is an integer in the range 0-65535. Sections of this range
are reserved for specific purposes:

- 0-1023 are well-known ports. These are assigned to processes that provide
commonly used network services. For example HTTP is port 80, FTP is port 20 and 21,
SMTP is port 25, and so on.

- 1024-49151 are registered ports. They are assigned as requested by private entities.
For example, companies such as Microsoft, IBM, and Cisco have ports assigned that they use
to provide specific services. On some operating systems, ports in this range are
also used for allocation as _ephemeral ports_ on the client side.

- 49152-65535 are dynamic ports. Ports in this range cannot be registered for a
specific use. They can be used for customized services or for allocation as
ephemeral parts.
