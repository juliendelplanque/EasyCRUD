accessing
foreignKeyRelations
	^ self relations select: [ :relation |
		relation class = ECRUDForeignKeyRelationDescription ]