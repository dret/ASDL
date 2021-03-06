# Activity subVerb

The subVerb property allows the specialization of verbs, without requiring consumers to understand the specific flavor of specialization. The main verb should be one from the standard vocabulary, and then subVerb allows more nuanced meanings of this verb. The main issue is that the activity should still be meaningful when somebody without knowledge of the specific subVerb encounters it.

## Object Properties

### subVerb

The subVerb property specifies a specialization of the activity type that is given in an activity's verb property. It must be used in a way that interpreting the activity only based on the verb (i.e., without considering the more specific subVerb value), the activity still makes sense and can be meaningfully interpreted in a way that completely ignores the subVerb property.

Because the subVerb property specifically relates to the verb property, it only makes sense when it appears in an activity object, and has no defined meaning otherwise.

