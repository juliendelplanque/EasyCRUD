queries
selectAllRows
	^ self tableDescription generateSelectAllRows
		beExecutedBy: self databaseAdapter