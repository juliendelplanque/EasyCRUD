queries
updateRow: dataDict withId: id
	^ (self tableDescription generateUpdateRow: dataDict withId: id)
			beExecutedBy: self databaseAdapter