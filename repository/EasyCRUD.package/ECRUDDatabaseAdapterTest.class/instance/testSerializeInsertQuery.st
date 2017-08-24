tests-queries generation
testSerializeInsertQuery
	| query |
	query := ECRUDInsertQuery new
					tableIdentifier: 'person';
					dataDict:  { 'first_name' -> 'John' . 'last_name' -> 'Doe' . 'age' -> 21 . 'address' -> 'Main Street' } asDictionary;
					yourself.
	self
		assert: (adapter serializeInsertQuery: query)
		equals: 'INSERT INTO person (address,age,first_name,last_name) VALUES ("Main Street",21,"John","Doe");'