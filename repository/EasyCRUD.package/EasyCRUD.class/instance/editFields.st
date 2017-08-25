accessing
editFields
	^ editFieldsNames collect: [ :s | self tableDescription fieldNamed: s ]