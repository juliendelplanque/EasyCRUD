accessing
requiredFields
	^ requiredFieldsNames collect: [ :s | self tableDescription fieldNamed: s ]