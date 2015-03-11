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