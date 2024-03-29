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

# The Elements of Latency

We can think of latency as a measure of delay. There are different _types_ of
delay that go together to determine the overall latency of a network connection.

- *Propagation Delay*: this is the amount of time it takes for a message to travel
from the sender to the receiver, and can be calculated as the ratio between distance
and speed.

- *transmission Delay*: the journey of data from point A to point B on a network
typically won't be made over one single cable. Instead the data will travel across
many different wires and cables, all inter-connected by switches, routers, and
other network devices. Each of these elements within the network can be thought of
as an individual 'link' within the overall system. Transmission delay is the amount
of time it takes to push the data onto the link.

- *Processing Delay*: Data travelling across the physical network doesn't directly cross
from one link to another, but is processed in various ways. We'll look at what this processing
entails in more details in a later assignment.

- *Queuing Delay*: Network devices such as routers can only process a certain amount of data
at one time. If there is more data than the device can handle, then it queues or buffers the data.

# Prep for Assessment
