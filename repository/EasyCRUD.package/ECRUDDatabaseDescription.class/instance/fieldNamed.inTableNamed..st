accessing
fieldNamed: aString inTableNamed: anotherString
	| table |
	table := (self tableNamed: anotherString).
	^ self fields detect: [ :f | f tableDescription = table and: [ f name = aString ] ]