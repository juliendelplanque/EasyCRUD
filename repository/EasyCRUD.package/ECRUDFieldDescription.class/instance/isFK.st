testing
isFK
	"Returns true if the field described is implicated in a foreign key relation."
	^ self databaseDescription foreignKeyRelations
		anySatisfy: [ :any | any from = self ]