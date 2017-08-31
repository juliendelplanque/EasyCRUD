query generation
generateSelectAllRowsForFieldsNamed: fieldsNames
	^ ECRUDSelectQuery new
			tableIdentifier: self name;
			fieldsSelected: fieldsNames;
			yourself