private - helpers
fkRelationDescriptionsFrom: fkRelations
	^ (fkRelations collect: [ :fkRelation |
		fkRelation first -> ((self databaseDescription
									foreignKeyReferencedBy: (self databaseDescription fieldNamed: fkRelation first inTableNamed: self name))
										tableDescription fieldNamed: fkRelation second)
	]) asDictionary.