Starting from the [Activity Streams Base Schema](https://github.com/activitystreams/activity-schema/blob/master/activity-schema.md), determine which of the base verbs, object types, and properties you can reuse, and where you have to invent new ones. Describe your activities in a structured way using the following template:

#### Activity Name

* Abstract: What can/should your activity be used for, in 100 words
* Properties
  * List all properties of the activity (e.g., verb, actor, status, etc.). You can omit describing properties if their interpretation is the same as in the activity base schema, but often it may still be helpful to describe their specific interpretation in your context. Always keep in mind that you cannot *change* the base property definitions; whatever you use them for has to make sense for somebody who does not know your specific use, and interprets them according to their definition in the base schema.
  * Take care that properties that you define for your activity do not hijack similar properties in the activity base schema. If in doubt, clarify what the difference between your property and the base property is
* Generic use of activity properties: State which of the properties you described might be reused in different contexts. Which of the properties do you reuse within your project? Give examples!
* Object Types
  * List all objects that your activity can have together with their object type
  * For each object type, list the properties that objects of this type can have
* Generic use of object properties: State which of the object properties you described might be reused within different types of objects. Which of the object types do you reuse within your project? Give examples!
* Natural language interpretation of your activity, be as specific as possible!
* Example of your activity that includes all optional properties. Multiple examples if one cannot capture all aspects of your activity


#### Example: add

* Abstract: The **add** activity conveys that the actor engaged in a physical exercise from startTime until endTime and that information about this activity was added to an exercise log. The activity also carries a universally unique identifier and holds more detailed information about the specific type of physical exercise.
* Properties
  * **subVerb**: This property carries more information about the nature of the data that was added
  * **UUID**: This property carries a unique identifier for the activity
* Generic use of activity properties
  * **subVerb**: This property can be used in many more contexts to better specify the meaning of the verb in the specific context.
  * **UUID**: This property can be reused whenever an activity requires a unique identifier.
* Object Types
  * **exerciseRecord**: This object contains the raw data that represents the exercise activity
    * **dataFields**: The object may be further described using this property, which lists the types of available data in the record as an array.
* Generic use of object properties:
  * **dataFields**: This property can be used in other contexts when the object refers to more information that is not part of the activity itself (e.g., using a URL). In this case, the property is useful to help consumers of the activity decide whether the object contains the data they are looking for.
* Natural language interpretation: `actor.displayName exercised from startTime until endTime. The raw data for this exercise can be found at object.url, it contains the fields dataFields[]`
* Example:

``` json
{
  "actor": {
    "displayName": "TestPatient",
    "id": "http://example.org/TestPatient",
    "objectType": "person"
  },
  "verb": "add",
  "startTime": "2015-01-05T17:33:40.000Z",
  "published": "2015-01-06T15:04:55.000Z",
  "endTime": "2015-01-05T19:08:39.000Z",
  "uuid": "http://example.org/activities/TestPatient_add_2015_01_05_1",
  "subVerb": "http://siemens.com/schemas/activity#Cycling",
  "status": "completed",
  "object": {
    "dataFields": [
      "u_id",
      "date_epoch",
      "date_human",
      "heartrate",
      "steps",
      "calories",
      "gsr",
      "skin_temp",
      "air_temp"
    ],
    "url": "http://russet.ischool.berkeley.edu:8081/health_upload_as_EDF.csv",
    "objectType": "exerciseRecord"
  }
}
```
