Abstract (http://activitystrea.ms/specs/json/1.0/)
==================================================

The core Activity Streams 1.0 vocabulary is defined in the core specification.


Verbs
=====

post (http://activitystrea.ms/specs/json/1.0/#post-verb)
--------------------------------------------------------

The "post" verb describes the act of authoring an object and then publishing it online. The actor can be any entity; the object can be of any object type; and the target, if specified, can be of any object type. A target, however, is not required. 


Object Types
============

object (http://activitystrea.ms/specs/json/1.0/#object)
------------------------------------------------------------------

The "activity" object type indicates that an Object represents an Activity. It can be used whenever an event involving another activity is described within an Activity Stream. For instance, when one user "shares" or "reposts" an activity from another user.


medialink (http://activitystrea.ms/specs/json/1.0/#media-link)
------------------------------------------------------------------

Some types of objects may have an alternative visual representation in the form of an image, video or embedded HTML fragments. A Media Link represents a hyperlink to such resources. Media Links are not specifically marked as such; instead, they are defined as the types of certain core properties. 

activity (http://activitystrea.ms/specs/json/1.0/#activity-object)
------------------------------------------------------------------

The "activity" object type indicates that an Object represents an Activity. It can be used whenever an event involving another activity is described within an Activity Stream. For instance, when one user "shares" or "reposts" an activity from another user.

In addition to the core Object properties, an "activity" object MAY contain any combination of the properties defined for an Activity. The values of the object's id and url fields MUST match those of the activity being described.

Note that an activity object MUST be processable as both an Object and an Activity and may contain fields from either construct, some of which may overlap or duplicate content. When duplication of content may occur, an implementation SHOULD choose to use the fields from the Activity object. For instance, in an activity object, the Activity's title property and the Object's displayName properties serve identical functions, therefore the use of the title property SHOULD be favored over the use of displayName.

Object Properties
=================

actor (http://activitystrea.ms/specs/json/1.0/#activity)
--------------------------------------------------------

Describes the entity that performed the activity. An activity MUST contain one actor property whose value is a single Object.

content (http://activitystrea.ms/specs/json/1.0/#activity)
----------------------------------------------------------

Natural-language description of the activity encoded as a single JSON String containing HTML markup. Visual elements such as thumbnail images MAY be included. An activity MAY contain a content property.


