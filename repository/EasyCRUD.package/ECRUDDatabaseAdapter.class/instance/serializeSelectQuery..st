queries generation
serializeSelectQuery: anECRUDSelectQuery
	^ String streamContents: [ :stream |
		stream << 'SELECT '.
		anECRUDSelectQuery fieldsSelected
			do: [ :id | stream << (id beSerializedBy: self) ] separatedBy: [ stream << $, ].
		stream
			<< ' FROM ';
			<< (anECRUDSelectQuery tableIdentifier beSerializedBy: self).
		self
			serializeWhereClauseOf: anECRUDSelectQuery on: stream;
			serializeOrderByClauseOf: anECRUDSelectQuery on: stream;
			serializeLimitClauseOf: anECRUDSelectQuery on: stream.
		stream << $; ]