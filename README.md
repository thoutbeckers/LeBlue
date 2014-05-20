LeBlue
======

[![Build Status](https://travis-ci.org/thoutbeckers/LeBlue.svg)](https://travis-ci.org/thoutbeckers/LeBlue)
[![Coverage Status](https://coveralls.io/repos/thoutbeckers/LeBlue/badge.png?branch=master)](https://coveralls.io/r/thoutbeckers/LeBlue?branch=master)

LeBlue is a Bluetooth LE API for Android that is somewhat easier to use than the standard Bluetooth LE API because it uses a more object oriented approach.

It's accessed through interfaces which means you can use different implementations, for example a mock implementation of an implementation using a vendor specific API.


Currently however support is limited to discovering devices and listening to characteristic updates.
