queries generation
serializeDeleteQuery: anECRUDDeleteQuery
	^ String streamContents: [ :stream |
		stream
			<< 'DELETE FROM ';
			<< (anECRUDDeleteQuery tableIdentifier beSerializedBy: self).
		self serializeWhereClauseOf: anECRUDDeleteQuery on: stream.
		stream << $; ]