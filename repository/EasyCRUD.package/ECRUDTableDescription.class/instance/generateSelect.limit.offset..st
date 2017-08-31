query generation
generateSelect: fieldsNames limit: limit offset: offset
	^ ECRUDSelectQuery new
			tableIdentifier: self name;
			fieldsSelected: fieldsNames;
			limitSize: limit;
			offset: offset;
			yourself