queries
all1NRelationValuesForColumnNamed: aString
	| relation |
	relation := self oneToNRelations
						detect: [ :rel | rel first = aString ]
						ifNone: [ self error: ('No 1-N relation for column named {1}.' format: { aString }) ].
	
	^ (self tableDescription generateSelectAllForeignKeyValuesFor: relation)
			beExecutedBy: self databaseAdapter