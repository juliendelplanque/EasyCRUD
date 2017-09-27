testing
columnHas1NRelation: aString
	^ self oneToNRelations
			anySatisfy: [ :rel | rel first = aString ]