Activity Stream Description Language (ASDL) 0.1
===============================================

The *Activity Stream Description Language (ASDL)* is used for describing Activity Streams (AS) vocabularies.

Introduction
------------

ASDL is based on [AS 1.0](http://activitystrea.ms/) and its model of activities that make statements about actors (who is acting), verbs (what is the action), objects (what is the object of the action), and targets (what is the target of the action). The [AS 1.0 Base Schema](https://github.com/activitystreams/activity-schema/blob/master/activity-schema.md) defines an initial set of verbs, object types, and object properties.

Applications are free to invent their own concepts for verbs, object types, and object properties, but AS does not make any assumptions about how those should be described (The AS 1.0 Base Schema uses simple tables and textual descriptions with examples).

The goal of ASDL is *not* to create a fully machine-understandable definition of AS extensions, in the sense that all aspects of verbs, object types, and object properties are defined in machine-understandable ways. Instead, ASDL follows the general design idea of the [*Service Documentation Language (Sedola)*](https://github.com/dret/sedola), which focuses on registry aspects, and not so much on full-fledged descriptions.

In the same way, ASDL is meant capture all of the concepts that an AS extension defines, without requiring a specific way on *how* they are defined. All that ASDL requires is that these concepts have URIs that can be dereferenced to get descriptions, but whether those descriptions are human-readable documentation or machine-readable definitions is outside of the scope of ASDL.

ASDL Concepts
-------------

The current ASDL specification is an early draft and is likely to change. It currently supports three concepts:

* **Verbs**:

* **Object Types**:

* **Object Properties**:

