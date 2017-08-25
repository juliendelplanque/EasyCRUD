api
displayFieldNamed: aString as: anotherString
	fieldsAliases at: (self tableDescription fieldNamed: aString) put: anotherString