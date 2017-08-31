queries
deleteRowWithId: id
	^ (self tableDescription generateDeleteRowWithId: id)
			beExecutedBy: self databaseAdapter