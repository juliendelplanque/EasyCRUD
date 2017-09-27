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
					whereClause: (('id' asECRUDIdentifier greater: 42) and: ('id' asECRUDIdentifier smaller: 52));
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name FROM person WHERE id>42 AND id<52;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name);
					whereClause: ('id' asECRUDIdentifier greater: 42);
					limitSize: 5;
					orderByField: 'first_name';
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name FROM person WHERE id>42 ORDER BY first_name ASC LIMIT 5;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name);
					limitSize: 5;
					offset: 10;
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name FROM person LIMIT 5 OFFSET 10;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name last_name);
					orderByField: 'first_name';
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name,last_name FROM person ORDER BY first_name ASC;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name last_name);
					orderByField: 'first_name';
					orderByDesc;
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name,last_name FROM person ORDER BY first_name DESC;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name);
					distinct: true;
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT DISTINCT first_name FROM person;'.
	
	query := ECRUDSelectQuery new
					tableIdentifier: 'person';
					fieldsSelected: #(first_name last_name);
					renameField: 'first_name' as: 'first';
					renameField: 'last_name' as: 'last';
					yourself.
	self assert: (adapter serializeSelectQuery: query) equals: 'SELECT first_name AS first,last_name AS last FROM person;'