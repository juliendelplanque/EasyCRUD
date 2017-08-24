queries generation
serializeDeleteQuery: anECRUDDeleteQuery
	^ String streamContents: [ :stream |
		stream << 'DELETE FROM '.
		self writeIdentifier: anECRUDDeleteQuery tableIdentifier on: stream.
		self serializeWhereClauseOf: anECRUDDeleteQuery on: stream.
		stream << $; ]