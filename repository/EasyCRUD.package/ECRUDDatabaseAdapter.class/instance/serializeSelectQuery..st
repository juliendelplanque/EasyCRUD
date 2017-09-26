queries generation
serializeSelectQuery: anECRUDSelectQuery
	^ String streamContents: [ :stream |
		stream << 'SELECT '.
		anECRUDSelectQuery fieldsSelected
			do: [ :id | stream << (id beSerializedBy: self) ] separatedBy: [ stream << $, ].
		stream
			<< ' FROM '.
		anECRUDSelectQuery tableIdentifiers
			do: [ :tableIdentifier | stream << (tableIdentifier beSerializedBy: self) ]
			separatedBy: [ stream << $, ].
		self
			serializeWhereClauseOf: anECRUDSelectQuery on: stream;
			serializeOrderByClauseOf: anECRUDSelectQuery on: stream;
			serializeLimitClauseOf: anECRUDSelectQuery on: stream.
		stream << $; ]