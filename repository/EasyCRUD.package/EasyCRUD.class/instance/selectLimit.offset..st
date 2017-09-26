queries
selectLimit: limit offset: offset
	"Returns the rows resulting of a select request of display fields.
	 Beware, each rows contains the value of the pk field in first position additionally to display fields."
	self hasOneToNRelations
		ifFalse: [
			^ (self tableDescription generateSelect: { self tableDescription pkField name } , displayFieldsNames limit: limit offset: offset)
					beExecutedBy: self databaseAdapter ].
				
	^ (self tableDescription generateSelect: { self tableDescription pkField name } , displayFieldsNames limit: limit offset: offset withForeignKeyRelations: self oneToNRelations)
			beExecutedBy: self databaseAdapter