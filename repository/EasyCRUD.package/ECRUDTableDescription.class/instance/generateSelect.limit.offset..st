query generation
generateSelect: fieldsNames limit: limit offset: offset
	^ ECRUDSelectQuery new
			tableIdentifier: self name;
			fieldsSelected: (fieldsNames collect: [ :fieldName | (self fieldNamed: fieldName) fullName ]);
			limitSize: limit;
			offset: offset;
			yourself