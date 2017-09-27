private
executeQueryString: aString
	| res execRes |
	res := ECRUDResultSet new.
	execRes := driver execute: aString.
	
	res columnNames: execRes ecrudColumnNames.
	execRes rows do: [ :row |
		res addRowFromData: row values ].
	^ res