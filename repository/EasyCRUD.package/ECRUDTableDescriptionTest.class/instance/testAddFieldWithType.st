tests-adding
testAddFieldWithType
	self assert: tableDescription fields size equals: 4.
	tableDescription
		addField: 'NEWFIELD' withType: ECRUDIntegerType.
	self
		assert: tableDescription fields size equals: 5;
		assert: tableDescription fields last name equals: 'NEWFIELD';
		assert: tableDescription fields last type equals: ECRUDIntegerType