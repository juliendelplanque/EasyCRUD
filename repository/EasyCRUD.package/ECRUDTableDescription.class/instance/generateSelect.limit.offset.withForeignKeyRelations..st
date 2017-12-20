query generation
generateSelect: fieldsNames limit: limit offset: offset withForeignKeyRelations: fkRelations
	| fkRelationDescriptions |
	fkRelationDescriptions := self fkRelationDescriptionsFrom: fkRelations.
	
	^ ECRUDSelectQuery new
			tableIdentifiers: { self name } , (fkRelations collect: [ :fkRelation | fkRelation third asECRUDIdentifier ]);
			fieldsSelected: (fieldsNames inject: OrderedCollection new into: [ :col :fieldName |					
				col add: (fkRelationDescriptions
								at: fieldName
								ifAbsent: [ self fieldNamed: fieldName ]) fullName.
				(self fieldNamed: fieldName) isFK
					ifTrue: [ 
						col add: (self fieldNamed: fieldName) fullName ].
				col ]);
			limitSize: limit;
			offset: offset;
			whereClause: (self generateWhereClauseFrom: fkRelations);
			yourself