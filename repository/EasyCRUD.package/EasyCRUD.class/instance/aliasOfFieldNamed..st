accessing - fields
aliasOfFieldNamed: aString
	"Return the alias of the field with the name given as parameter (aString),
	 if no alias is defined for aString, simply returns aString."
	^ fieldsAliases at: (self tableDescription fieldNamed: aString) ifAbsent: [ aString ]