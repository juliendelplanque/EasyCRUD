accessing
fieldNamed: aString
	^ self fields detect: [ :field | field name = aString ]