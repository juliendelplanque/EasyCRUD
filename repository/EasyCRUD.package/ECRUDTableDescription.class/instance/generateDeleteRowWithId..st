query generation
generateDeleteRowWithId: id
	^ ECRUDDeleteQuery new
		tableIdentifier: self name;
		whereClause: (ECRUDEquals left: self pkField fullName asECRUDIdentifier right: id);
		yourself