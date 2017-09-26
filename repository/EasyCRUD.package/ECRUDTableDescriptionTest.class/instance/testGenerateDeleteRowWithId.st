tests-query generation
testGenerateDeleteRowWithId
	| query |
	query := tableDescription generateDeleteRowWithId: 1.
	self
		assert: query tableIdentifier equals: 'COMPANY' asECRUDIdentifier;
		assert: query whereClause left equals: 'COMPANY.ID' asECRUDIdentifier;
		assert: query whereClause right equals: 1