queries
selectAllRows
	^ (self tableDescription generateSelectAllRowsForFieldsNamed: displayFieldsNames)
		beExecutedBy: self databaseAdapter