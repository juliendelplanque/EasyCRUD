queries
selectLimit: limit offset: offset
	^ (self tableDescription generateSelect: displayFieldsNames limit: limit offset: offset)
			beExecutedBy: self databaseAdapter