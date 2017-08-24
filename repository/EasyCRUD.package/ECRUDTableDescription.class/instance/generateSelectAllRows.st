query generation
generateSelectAllRows
	^ ECRUDSelectQuery new
			tableIdentifier: self name;
			fieldsSelected: {self pkField name},(self fields collect: #name);
			yourself