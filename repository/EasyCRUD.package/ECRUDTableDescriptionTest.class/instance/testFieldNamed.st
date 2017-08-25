tests-accessing
testFieldNamed
	| field |
	field := tableDescription fieldNamed: 'ID'.
	self
		assert: field class equals: ECRUDFieldDescription;
		assert: field name equals: 'ID'