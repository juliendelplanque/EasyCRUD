tests-queries generation
testSerializeSelectQuery
	| query |
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name last_name age address);
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name,last_name,age,address FROM person;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name);
					whereClause: #(('id' > 42) ('id' < 52));
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name FROM person WHERE id>42 AND id<52;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name);
					whereClause: #(('id' > 42));
					limitSize: 5;
					orderByField: 'first_name';
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name FROM person WHERE id>42 ORDER BY first_name LIMIT 5;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name);
					limitSize: 5;
					offset: 10;
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name FROM person LIMIT 5 OFFSET 10;'