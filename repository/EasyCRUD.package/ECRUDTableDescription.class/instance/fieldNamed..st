accessing
fieldNamed: aString
	^ self allFields
		detect: [ :field | field name = aString ]
		ifNone: [ ECRUDUnknownField signal: ('The field named {1} is unknown by table {2}' format: { aString . self name }) ]