accessing - fields
requiredFields
	^ requiredFieldsNames collect: [ :s | self tableDescription fieldNamed: s ]