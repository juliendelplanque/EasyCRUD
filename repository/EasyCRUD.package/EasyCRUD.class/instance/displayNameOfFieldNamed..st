accessing
displayNameOfFieldNamed: aString
	^ fieldsAliases at: (self tableDescription fieldNamed: aString)