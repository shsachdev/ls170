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

So we can use ports to identify specific services running on host machines, but
how does that help us with multiplexing and demultiplexing?

The answer is that the source and destination port numbers are included in the
Protocol Data Units (PDU) for the transport layer.

Data from the application layer is encapsulated as the data payload in this PDU,
and the source and destination port numbers within the PDU can be used to direct
that data to specific processes on a host.

The entire PDU is then encapsulated as the data payload in an IP packet. The IP
addresses in the packet header can be used to direct data from one host to another.
The IP Address and the port number _together_ are what enables end-to-end
communication between specific applications on different machines.

The combination of IP address and port number information can be thought of as
defining a _communication_ _end_point_. This communication end_point is generally
referred to as a _socket_. We'll talk more about sockets later, but for now
you can just think of them as the combination of IP address and port number;

for example `216.3.128.12:8080`.

# Sockets

At a conceptual level, a socket is, as outlined above, an abstraction for an
endpoint used for inter-process communication. At an implementation level it can
be used to refer to different specific things:

- UNIX socket: a mechanism for inter-process communication between local
processes running on the same machine.

- Internet sockets (such as TCP/IP socket): a mechanism for inter-process
communication between networked processes (usually on different machines).

At a conceptual level, a socket is a communication end-point defined by an
address-port pair.

Connectionless vs Connection-Oriented Networks Communication

# Network Reliability

The possibility of losing data and it not being replaced means that the network
up to and including the Internet Protocol is effectively an _unreliable_
_communication_ _channel_.
