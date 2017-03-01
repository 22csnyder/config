Use pulse for contol
--------------------

Since Ubuntu uses pulseaudio, its probably best to use that interface instead
of going to alsa directly. I found a nice pulseaudio lua library
[here](https://github.com/mokasin/apw), I just used the pulseaudio.lua and not
the widget.

Minimal working example
-----------------------

The only real problem was using a depreciated timer for the volume widget, 
in Awesome 3.4 a timer object was included see the upgrade docs on
[Timers](http://awesome.naquadah.org/wiki/Awesome_3.3_to_3.4#Timers).

