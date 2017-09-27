query generation
generateSelectAllForeignKeyValuesFor: fkRelation
	| foreignKeyDatabase |
	foreignKeyDatabase := (self databaseDescription foreignKeyReferencedBy: (self databaseDescription fieldNamed: fkRelation first inTableNamed: self name))
									tableDescription.
	^ ECRUDSelectQuery new
		tableIdentifier: foreignKeyDatabase name asECRUDIdentifier;
		fieldsSelected: { foreignKeyDatabase pkField fullName . (foreignKeyDatabase fieldNamed: fkRelation second) fullName };
		distinct: true;
		orderByField: (foreignKeyDatabase fieldNamed: fkRelation second) fullName;
		orderByAsc;
		yourself