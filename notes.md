# What is a network?

At the most basic level, it's two devices connected in such a way that they can
communicate or exchange data.

Routers are network devices that can route network traffic to other networks.

Within a Local Area Network, they effectively act as gateways into and out of
the network.

# Protocols

If we zoomed into the vast network of networks that is the internet, we'd see
that it's made up of a huge array of disparate components.

There are countless different types of device that can connect to the internet,
from laptops, tablets, and phones, to kettles, toasters, and lightbulbs

We can think of a protocol as a system of rules. In terms of computer networks,
we can be a bit more specific:

"A set of rules governing the exchange or transmission of data."

There are numerous different protocols that are used to communicate over the
internet. A short list of some of the most widely used protocols might include
the following:

- IP
- SMTP
- TCP
- HTTP
- Ethernet
- FTP
- DNS
- UDP
- TLS

You might be wondering why there are so many different protocols for network
communication. Two reasons for this:

- Different protocols were developed to address different aspects of network
communication.
- Different protocols were developed to address the same aspect of network
communication, but in a different way or for a specific use-case.

# Protocols for different aspects of communication

To ensure that a particular message is understood, we need to order the words
within that message in a certain order. We can think of this word order as part
of the *syntactical rules* that govern the *structure of the message*.

A different aspect of communication might be the flow and order of all the
messages in the conversation. For example, speaking in turn rather than both
at the same time. We can maybe think of these as *message transfer rules* for how
speech is conducted.

# Different Protocols for the Same Aspect of Communication

You can probably think of various situations where different sets of message
transfer rules are or aren't appropriate.

- In a classroom situation, if a student wants to ask the teacher a question, we
might have fairly strict rules for initiating and conducting the transfer of
messages:

1. Student raises hand.
2. Teacher acknowledges student.
3. Student asks question.
4. Teacher answers question.

- A different situation with less strictly defined rules might be a social
conversation between friends. All the participants are peers with no hierarchy.
Anyone can initiate a message exchange and anyone can respond.

- Yet another situation might be someone giving a presentation at a conference.
The speaker might start speaking at a specific set time, and should normally be
allowed to deliver the presentation without interruption while the audience listens.

All of these situations are concerned with the same aspect of communication, the flow
and order of the message transfer, but use different sets of rules, or _protocols_.

We can think of network communication protocols in the same way. TCP and UDP would
be examples of 2 protocols that address the same basic aspect of communication, the
transfer of messages between applications, but do so in different ways.

TCP and HTTP would be examples of 2 protocols that address different aspects
of communication; TCP is the transfer of messages between applications, and
HTTP the structure of those messages.

# A Layered System

It can be useful to group these protocols together in terms of the particular
aspect of communication that they address. We can think of those protocol groups
as functioning within _layers_ of an overall system of communication.

# Protocol Data Units

A protocol data unit is an amount or block of data transferred over a network.
Different protocols or protocol layers refer to PDUs by different names.

For example, at the Link/Data Link a PDU is known as a _frame_, at the Internet/
Network layer it is known as a _packet_, at the Transport layer it is known as
a segment (TCP) or _datagram_ (UDP).

In all cases the basic concept is effectively the same, the PDU consists of a header,
a data payload, and in some cases a trailer or footer.

## Header and Trailer

The exact structure of the header and, if included, trailer varies from protocol to protocol,
but the purpose of them is the same in each case: to provide protocol-specific meta-data about the PDU.

For example, an Internet Protocol (IP) packet header would include fields for the Source IP Address and
the Destination IP Address, which would be used to correctly route the packet.

## Data Payload

The data payload portion of a PDU is simply the data that we want to transport over
the network using a specific protocol at a particular network layer.

The data payload is the key to the way encapsulation is implemented. The entire PDU
from a protocol at one layer is set as the data payload for a protocol as the layer below.

For example, a HTTP request at the Application layer could be set as the payload
for a TCP segment at the transport layer.
