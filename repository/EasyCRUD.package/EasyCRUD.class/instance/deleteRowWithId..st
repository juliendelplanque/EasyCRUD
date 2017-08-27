queries
deleteRowWithId: id
	^ (self tableDescription tableDescription generateDeleteRowWithId: id)
			beExecutedBy: self databaseAdapter