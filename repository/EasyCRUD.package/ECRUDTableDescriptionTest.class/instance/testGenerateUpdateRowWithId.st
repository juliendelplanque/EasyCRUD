tests-query generation
testGenerateUpdateRowWithId
	| query |
	query := tableDescription generateUpdateRow: { 'ID' -> 1 . 'NAME' -> 'Bill' . 'AGE' -> 20 . 'ADDRESS' -> 'New York' . 'SALARY' -> 2000.58 } asDictionary withId: 1.
	
	self
		assert: query tableIdentifier equals: 'COMPANY' asECRUDIdentifier;
		assert: query dataDict size equals: 5;
		assert: (query dataDict at: 'ID' asECRUDIdentifier) equals: 1;
		assert: (query dataDict at: 'NAME' asECRUDIdentifier) equals: 'Bill';
		assert: (query dataDict at: 'AGE' asECRUDIdentifier) equals: 20;
		assert: (query dataDict at: 'ADDRESS' asECRUDIdentifier) equals: 'New York';
		assert: (query dataDict at: 'SALARY' asECRUDIdentifier) equals: 2000.58