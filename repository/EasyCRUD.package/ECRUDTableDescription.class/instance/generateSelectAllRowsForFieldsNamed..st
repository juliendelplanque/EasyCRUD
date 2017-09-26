query generation
generateSelectAllRowsForFieldsNamed: fieldsNames
	^ ECRUDSelectQuery new
			tableIdentifier: self name;
			fieldsSelected:  (fieldsNames collect: [ :fieldName | (self fieldNamed: fieldName) fullName ]);
			yourself