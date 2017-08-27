queries
selectLimit: limit offset: offset
	^ (self tableDescription generateSelectLimit: limit offset: offset)
			beExecutedBy: self databaseAdapter