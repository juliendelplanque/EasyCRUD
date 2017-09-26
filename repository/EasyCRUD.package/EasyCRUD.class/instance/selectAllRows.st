queries
selectAllRows
	self hasOneToNRelations
		ifFalse: [
			^ (self tableDescription generateSelectAllRowsForFieldsNamed: displayFieldsNames)
				beExecutedBy: self databaseAdapter ].
			
	^ (self tableDescription generateSelectAllRowsForFieldsNamed: { self tableDescription pkField name } , displayFieldsNames withForeignKeyRelations: self oneToNRelations)
			beExecutedBy: self databaseAdapter