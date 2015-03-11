Activity Stream Description Language (ASDL) 0.1
===============================================

The *Activity Stream Description Language (ASDL)* is used for describing Activity Streams (AS) vocabularies.

Introduction
------------

ASDL is based on [AS 1.0](http://activitystrea.ms/) and its model of activities that make statements about actors (who is acting), verbs (what is the action), objects (what is the object of the action), and targets (what is the target of the action). The [AS 1.0 Base Schema](https://github.com/activitystreams/activity-schema/blob/master/activity-schema.md) defines an initial set of verbs, object types, and object properties.

Applications are free to invent their own concepts for verbs, object types, and object properties, but AS does not make any assumptions about how those should be described (The AS 1.0 Base Schema uses simple tables and textual descriptions with examples).

The goal of ASDL is *not* to create a fully machine-understandable definition of AS extensions, in the sense that all aspects of verbs, object types, and object properties are defined in machine-understandable ways. Instead, ASDL follows the general design idea of the [*Service Documentation Language (Sedola)*](https://github.com/dret/sedola), which focuses on registry aspects, and not so much on full-fledged descriptions.

In the same way, ASDL is meant to capture all of the concepts that an AS extension defines, without requiring a specific way on *how* they are defined. All that ASDL requires is that these concepts have URIs that can be dereferenced to get descriptions, but whether those descriptions are human-readable documentation or machine-readable definitions is outside of the scope of ASDL.


AS 1.0 Extension Model
----------------------

AS 1.0 has an [explicit extension model section](http://activitystrea.ms/specs/json/1.0/#extensions) that defines how extensions can be defined, and what information must be specified when defining these extensions. Quoting from that section, these are the relevant parts of the extension model:

* **Verbs**: "*When defining a new verb, the defining specification MUST provide a verb identifier for the new verb and MUST define the meaning of the verb in terms of the actor, object and target properties of the activity, and MUST define whether a target is required and what it represents when present.*"

* **Object Types**: "*When defining a new object type, the defining specification MUST provide an object type identifier for the new object type. The definition of the new object type MAY define additional properties specific to that object type; if so, the specification SHOULD define how these additional properties are to be serialized within the JSON document, and the specification MAY define how these additional properties are to be represented in other serialization formats. The definition of the new object type MAY impose additional meaning or constraints on the core object properties as long as the new definition remains compatible with the definition of the base component.*"

* **Object Properties**: "*Additional extension properties MAY also be defined for Activities and Media Links. The specification of these properties SHOULD define how they are to be serialized within the JSON document, and the specification MAY define how they are to be represented in other serialization formats. New properties SHOULD be defined such that the Object, Activity or Media Link would remain useful if those properties are omitted or removed during processing, to enable graceful fallback by consumers that do not implement the extension properties or alternative representations that are unable to represent the extensions.*"

While this definition of "extension object properties seems to be specific to only Activities and Media Links, it should be kept in mind that [AS 1.0 explicitly allows that "*new extension properties can be added anywhere in the JSON serialization of an object or activity*"](http://activitystrea.ms/specs/json/1.0/#extensions). Thus, effectively any object type can be extended by adding object properties, meaning that the effective extension model for object properties is one that is not specific for any object type.

In addition to this extension model, there also is a processing model that defines how extensions have to be handled when applications encounter extensions that they do not implement: "*Processors that encounter unfamiliar extension properties within an Object, Activity or Media Link MUST NOT stop processing or signal an error and MUST continue processing the items as if the extension properties were not present.*"


ASDL Concepts
-------------

The current ASDL specification is an early draft and is likely to change. It currently supports three concepts:

* **Verbs**: According to [AS 1.0, a verb "*identifies the action that the activity describes*"](http://activitystrea.ms/specs/json/1.0/#activity). Verbs can be either identified by plain strings, or by URIs. ASDL recommends that plain strings SHOULD only be used if a vocabulary is likely to undergo standardization and publication, so that there is public and findable documentation available. In all other cases, verbs SHOULD be identified by URIs to avoid possible naming conflicts. In case of URI-identified verbs, those defining them MAY make them dereferencable and provide helpful resources, such as ASDL or other kinds of documentation or description.

* **Object Types**: According to [AS 1.0, an object type "*identifies the type of object*", and "*if no objectType property is contained, the object has no specific type*"](http://activitystrea.ms/specs/json/1.0/#object). Objects themselves ["*describe the primary object of the activity*"](http://activitystrea.ms/specs/json/1.0/#activity). Object types can be either identified by plain strings, or by URIs. ASDL recommends that plain strings SHOULD only be used if a vocabulary is likely to undergo standardization and publication, so that there is public and findable documentation available. In all other cases, object types SHOULD be identified by URIs to avoid possible naming conflicts. In case of URI-identified object types, those defining them MAY make them dereferencable and provide helpful resources, such as ASDL or other kinds of documentation or description.

* **Object Properties**: AS 1.0 objects contain properties, and some of these are defined in the [AS 1.0 Core specification](http://activitystrea.ms/specs/json/1.0/), and others in the [AS 1.0 Base Schema](https://github.com/activitystreams/activity-schema/blob/master/activity-schema.md). While properties may be defined in a way that they only/mostly make sense for specific object type(s), the definition of object properties is not scoped, meaning that strictly speaking, properties cannot be limited to specific object type(s).

While Verbs and Object Types can be identified by string or URI (which is possible because their identifiers appear in the "value" part of JSON members), object properties can only be identified by strings (because their identifiers appear in the "name" part of JSON members).
