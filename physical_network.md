In previous assignment, we have looked at some important concepts:

- Protocols acting as a system of rules for network communication.
- Groups of protocols working in a layered system. Protocols at one layer
providing services to the layer above.
- Data being encapsulated into a Protocol Data Unit, creating separation between
protocols operating at different layers.

# Bits and Signals

The functionality at the physical level is essentially concerned with the transfer
of bits (binary data). In order to be transported, these bits are converted into signals
such as electrical or light signal or radio waves, depending on the medium used to transport
the signal.

# Characteristics of a Physical Network

The 2 main characteristics in terms of the performance of a physical network are
Latency and Bandwidth. In simple terms, latency is a measure of the _time_ it takes
for some data to get from one point in a network to another point in a network.

Bandwidth is the _amount_ of data that can be sent at once.

Just increasing the bandwidth doesn't necessarily improve the performance of a network.
We'll explore the reasons for this when we look at TCP and UDP in a later lesson.

## The Elements of Latency

We can think of latency as a measure of delay. There are different _types_ of
delay that go together to determine the overall latency of a network connection.
