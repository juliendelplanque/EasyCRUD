accessing
addFields
	^ addFieldsNames collect: [ :s | self tableDescription fieldNamed: s ]