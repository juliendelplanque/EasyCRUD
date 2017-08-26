tests-adding
testAddFloatField
	self assert: tableDescription fields size equals: 4.
	tableDescription
		addFloatField: 'NEWFLOATFIELD'.
	self
		assert: tableDescription fields size equals: 5;
		assert: tableDescription fields last name equals: 'NEWFLOATFIELD';
		assert: tableDescription fields last type class equals: ECRUDFloatType