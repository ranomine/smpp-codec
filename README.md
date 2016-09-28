SMPP Codec and Connection Library
=================================

Simple SMPPv3.4 codec and connection library for Smalltalk/Pharo
built by [moiji-mobile](http://www.moiji-mobile.com) and used by
the [SMPP Router](http://www.moiji-mobile.com/producs/smpp-router),
[SMSC](http://www.moiji-mobile.com/products/smsc) and the GSM SMS
to SMPP [HomeRouting](https://github.com/moiji-mobile/sms-routehome).

The built-in connection code can be used to build an ESME or MC
with automatic handling of EnquireLink (sending it and closing
the connection in case of timeout). On top of the connection and
codec is the command structure that allows to send messages and
deal with success, failure or timeout.

In an ad-hoc micro benchmark on an average 2015 13" Macbook Air
morethan 8.000 DeliverSM messages can be decoded and then re-encoded
in a second. Pure decoding speed is with more than 17.000 a second.
