query generation
generateSelectLimit: limit offset: offset
	^ ECRUDSelectQuery new
			tableIdentifier: self name;
			fieldsSelected: {self pkField name},(self fields collect: #name);
			limitSize: limit;
			offset: offset;
			yourself