converting
convertString: aString
	^ Date readFrom: aString pattern: 'yyyy-mm-dd'