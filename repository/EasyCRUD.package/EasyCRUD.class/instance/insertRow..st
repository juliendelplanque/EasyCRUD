queries
insertRow: dataDict
	^ (self tableDescription generateInsertRow: dataDict)
			beExecutedBy: self databaseAdapter