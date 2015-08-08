Activity Stream Documentation Language (ASDL)
=============================================

The *Activity Stream Documentation Language (ASDL)* is a language to make *Activity Streams (AS)* more self-describing. It's work in progress, with the current version being targeted at [AS 1.0](http://activitystrea.ms/) rather than the in-flux work on AS 2.0 at the [W3C Social Web WG](http://www.w3.org/Social/WG).

AS are great at sharing information about activities across applications and services. As long as AS use the built-in vocabulary, consensus is established through the way how this vocabulary is defined. [AS 1.0](https://github.com/activitystreams/activity-schema/blob/master/activity-schema.md) and [AS 2.0](http://www.w3.org/TR/activitystreams-vocabulary/) have definitions for their core vocabularies. (The current version of AS 2.0 confusingly calls the actual core vocabulary the "[extended vocabulary](http://www.w3.org/TR/2015/WD-activitystreams-vocabulary-20150129/#extendedtypes)", but hopefully this terminology will be cleaned up in future versions.)

The goal of ASDL is to allow AS publishers to provide access to their AS vocabularies. It is *not* intended as a complete description language for those vocabularies. It simply serves as an inventory of concepts that consumers of AS should be prepared to process, and allows publishers of those AS vocabularies to make documentation snippets available, and link to more detailed documentation or formal descriptions.

ASDL is work in progress, currently the following resources are available:

* Early drafts of the ASDL specification (currently: [0.1](0.1))
* [Simon Mayer, Florian Michahelles, and Erik Wilde, "A Connective Fabric for Bridging Internet of Things Silos", Fifth International Conference on the Internet of Things (IoT 2015), Seoul, South Korea, October 2015](http://dret.net/netdret/publications#wil15c)

