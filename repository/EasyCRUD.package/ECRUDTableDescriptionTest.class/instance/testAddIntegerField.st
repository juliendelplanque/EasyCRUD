tests-adding
testAddIntegerField
	self assert: tableDescription fields size equals: 4.
	tableDescription
		addIntegerField: 'NEWINTEGERFIELD'.
	self
		assert: tableDescription fields size equals: 5;
		assert: tableDescription fields last name equals: 'NEWINTEGERFIELD';
		assert: tableDescription fields last type equals: ECRUDIntegerType