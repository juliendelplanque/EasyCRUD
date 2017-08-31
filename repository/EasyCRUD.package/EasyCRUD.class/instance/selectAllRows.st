queries
selectAllRows
	^ (self tableDescription generateSelectAllRowsForFieldsNamed: self displayFieldsOriginalNames)
		beExecutedBy: self databaseAdapter