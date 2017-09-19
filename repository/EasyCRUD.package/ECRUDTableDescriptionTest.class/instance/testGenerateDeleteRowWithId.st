tests-query generation
testGenerateDeleteRowWithId
	| query |
	query := tableDescription generateDeleteRowWithId: 1.
	self
		assert: query tableIdentifier equals: 'COMPANY';
		assert: query whereClause size equals: 1;
		assertCollection: query whereClause first hasSameElements: #('COMPANY.ID' '=' 1)