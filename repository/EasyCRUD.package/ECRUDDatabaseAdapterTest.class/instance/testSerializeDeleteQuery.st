tests-queries generation
testSerializeDeleteQuery
	| query |
	query := ECRUDDeleteQuery new
					tableIdentifier: 'person';
					whereClause: ('id' asECRUDIdentifier equals:  42);
					yourself.
	self
		assert: (adapter serializeDeleteQuery: query)
		equals: 'DELETE FROM person WHERE id=42;'