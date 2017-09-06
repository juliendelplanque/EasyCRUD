accessing
tableNamed: aString
	^ self tables detect: [ :t | t name = aString ]