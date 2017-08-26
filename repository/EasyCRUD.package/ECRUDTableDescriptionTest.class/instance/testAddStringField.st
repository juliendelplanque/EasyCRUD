tests-adding
testAddStringField
	self assert: tableDescription fields size equals: 4.
	tableDescription
		addStringField: 'NEWSTRINGFIELD'.
	self
		assert: tableDescription fields size equals: 5;
		assert: tableDescription fields last name equals: 'NEWSTRINGFIELD';
		assert: tableDescription fields last type class equals: ECRUDStringType