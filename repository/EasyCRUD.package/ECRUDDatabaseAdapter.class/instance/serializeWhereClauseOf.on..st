private - query generation
serializeWhereClauseOf: anECRUDQueryWithWhereClause on: stream
	anECRUDQueryWithWhereClause hasWhereClause
		ifFalse: [ ^ self ].
	stream
		<< ' WHERE ';
		<< (anECRUDQueryWithWhereClause whereClause beSerializedBy: self)