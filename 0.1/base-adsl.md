Verbs
=====


accept
------

Indicates that that the actor has accepted the object. For instance, a person accepting an award, or accepting an assignment.

```
  {
    "actor": {
      "objectType": "person", 
      "displayName": "Sally"},
    "verb": "accept",
    "object": {
      "objectType": "job", 
      "displayName": "Director of Marketing"},
    "title": "Sally accepted the Director of Marketing job."
  }
```


access
------

Indicates that the actor has accessed the object. For instance, a person accessing a room, or accessing a file.

```
  {
    "actor": {
      "objectType": "person", 
      "displayName": "Joe"},
    "verb": "access",
    "object": {
      "objectType": "file", 
      "displayName": "4Q2012 Sales Forecast.xls"},
    "published": "2012-12-12T12:12:12Z",
    "title": "Joe accessed the file \"4Q2012 Sales Forecast.xls\""
  }```


acknowledge
-----------

Indicates that the actor has acknowledged the object. This effectively signals that the actor is aware of the object's existence.

```
  {
    "actor": {
      "objectType": "person", 
      "displayName": "Sally"},
    "verb": "acknowledge",
    "object": {
      "objectType": "issue", 
      "displayName": "#123: There is a problem with the build"},
    "Sally acknowledged Issue #123"
  }
```


Object Types
============


alert
-----

Represents any kind of significant notification.


application
-----------

Represents any kind of software application.


article
-------

Represents objects such as news articles, knowledge base entries, or other similar construct. Such objects generally consist of paragraphs of text, in some cases incorporating embedded media such as photos and inline hyperlinks to other resources.


Object Properties
=================


embedCode
---------

This property is defined to be a String. It is a fragment of HTML markup that, when embedded within another HTML page, provides an interactive user-interface for viewing or listening to the video or audio stream.


stream
------

This property is defined to be a Media Link. It represents an Activity Streams Media Link to the video or audio content itself. 