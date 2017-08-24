queries generation
serializeSelectQuery: anECRUDSelectQuery
	^ String streamContents: [ :stream |
		stream << 'SELECT '.
		self writeIdentifiers: anECRUDSelectQuery fieldsSelected on: stream.
		stream << ' FROM '.
		self
			writeIdentifier: anECRUDSelectQuery tableIdentifier on: stream;
			serializeWhereClauseOf: anECRUDSelectQuery on: stream;
			serializeOrderByClauseOf: anECRUDSelectQuery on: stream;
			serializeLimitClauseOf: anECRUDSelectQuery on: stream.
		stream << $; ]