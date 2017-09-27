queries generation
serializeSelectQuery: anECRUDSelectQuery
	^ String streamContents: [ :stream |
		stream << 'SELECT '.
		anECRUDSelectQuery distinct
			ifTrue: [ stream << 'DISTINCT ' ].
		anECRUDSelectQuery fieldsSelected
			do: [ :id |
				stream << (id beSerializedBy: self).
				(anECRUDSelectQuery isFieldRenamed: id)
					ifTrue: [
						stream
							<< ' AS ';
							<< ((anECRUDSelectQuery newNameOfFieldNamed: id) beSerializedBy: self) ] ]
			separatedBy: [ stream << $, ].
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