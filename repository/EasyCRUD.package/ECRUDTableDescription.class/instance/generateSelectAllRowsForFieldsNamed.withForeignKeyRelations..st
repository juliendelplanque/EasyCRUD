query generation
generateSelectAllRowsForFieldsNamed: fieldsNames withForeignKeyRelations: fkRelations
	| fkRelationDescriptions |
	fkRelationDescriptions := self fkRelationDescriptionsFrom: fkRelations.
	^ ECRUDSelectQuery new
			tableIdentifiers: { self name } , (fkRelations collect: [ :fkRelation | fkRelation third asECRUDIdentifier ]);
			fieldsSelected: (fieldsNames collect: [ :fieldName |
				(fkRelationDescriptions
					at: fieldName
					ifAbsent: [ self fieldNamed: fieldName ]) fullName ]);
			whereClause: (self generateWhereClauseFrom: fkRelations);
			yourself