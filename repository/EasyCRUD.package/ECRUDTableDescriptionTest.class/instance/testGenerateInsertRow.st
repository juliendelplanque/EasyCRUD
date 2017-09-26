tests-query generation
testGenerateInsertRow
	| query |
	query := tableDescription generateInsertRow: { 'ID' -> 1 . 'NAME' -> 'Bill' . 'AGE' -> 20 . 'ADDRESS' -> 'New York' . 'SALARY' -> 2000.58 } asDictionary.
	self
		assert: query tableIdentifier equals: 'COMPANY' asECRUDIdentifier;
		assert: query dataDict size equals: 5;
		assert: (query dataDict at: 'COMPANY.ID' asECRUDIdentifier) equals: 1;
		assert: (query dataDict at: 'COMPANY.NAME' asECRUDIdentifier) equals: 'Bill';
		assert: (query dataDict at: 'COMPANY.AGE' asECRUDIdentifier) equals: 20;
		assert: (query dataDict at: 'COMPANY.ADDRESS' asECRUDIdentifier) equals: 'New York';
		assert: (query dataDict at: 'COMPANY.SALARY' asECRUDIdentifier) equals: 2000.58