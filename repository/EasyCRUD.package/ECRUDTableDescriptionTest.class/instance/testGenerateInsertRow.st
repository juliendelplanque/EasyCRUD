tests-query generation
testGenerateInsertRow
	| query |
	query := tableDescription generateInsertRow: { 'ID' -> 1 . 'NAME' -> 'Bill' . 'AGE' -> 20 . 'ADDRESS' -> 'New York' . 'SALARY' -> 2000.58 } asDictionary.
	self
		assert: query tableIdentifier equals: 'COMPANY';
		assert: query dataDict size equals: 5;
		assert: (query dataDict at: 'COMPANY.ID') equals: 1;
		assert: (query dataDict at: 'COMPANY.NAME') equals: 'Bill';
		assert: (query dataDict at: 'COMPANY.AGE') equals: 20;
		assert: (query dataDict at: 'COMPANY.ADDRESS') equals: 'New York';
		assert: (query dataDict at: 'COMPANY.SALARY') equals: 2000.58