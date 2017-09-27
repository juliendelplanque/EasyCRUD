tests-queries generation
testSerializeUpdateQuery
	| query |
	query := ECRUDUpdateQuery new
					tableIdentifier: 'person';
					dataDict: { 'first_name' -> 'John' . 'last_name' -> 'Doe' . 'age' -> 21 . 'address' -> 'Main Street' } asDictionary;
					whereClause: ('id' asECRUDIdentifier equals: 42);
					yourself.
	self assert: (adapter serializeUpdateQuery: query) equals: 'UPDATE person SET address="Main Street",age=21,first_name="John",last_name="Doe" WHERE id=42;'