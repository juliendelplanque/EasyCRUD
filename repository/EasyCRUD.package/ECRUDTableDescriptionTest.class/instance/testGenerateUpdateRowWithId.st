tests-query generation
testGenerateUpdateRowWithId
	| query |
	query := tableDescription generateUpdateRow: { 'ID' -> 1 . 'NAME' -> 'Bill' . 'AGE' -> 20 . 'ADDRESS' -> 'New York' . 'SALARY' -> 2000.58 } asDictionary withId: 1.
	
	self
		assert: query tableIdentifier equals: 'COMPANY';
		assert: query dataDict size equals: 5;
		assert: (query dataDict at: 'ID') equals: 1;
		assert: (query dataDict at: 'NAME') equals: 'Bill';
		assert: (query dataDict at: 'AGE') equals: 20;
		assert: (query dataDict at: 'ADDRESS') equals: 'New York';
		assert: (query dataDict at: 'SALARY') equals: 2000.58