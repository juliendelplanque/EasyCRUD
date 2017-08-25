accessing
fieldNamed: aString
	^ self allFields detect: [ :field | field name = aString ]