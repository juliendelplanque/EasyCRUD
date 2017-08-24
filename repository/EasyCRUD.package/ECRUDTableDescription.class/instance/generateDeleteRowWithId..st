query generation
generateDeleteRowWithId: id
	^ ECRUDDeleteQuery new
		tableIdentifier: self name;
		whereClause: { { self pkField name . '=' . id } };
		yourself