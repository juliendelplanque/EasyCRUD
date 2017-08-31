queries
selectLimit: limit offset: offset
	^ (self tableDescription generateSelect: self displayFieldsOriginalNames limit: limit offset: offset)
			beExecutedBy: self databaseAdapter