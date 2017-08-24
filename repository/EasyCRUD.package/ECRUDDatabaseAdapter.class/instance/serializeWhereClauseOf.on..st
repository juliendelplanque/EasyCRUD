private - query generation
serializeWhereClauseOf: anECRUDQuery on: stream
	anECRUDQuery hasWhereClause
		ifFalse: [ ^ self ].
	stream << ' WHERE '.
	anECRUDQuery whereClause do: [ :clause |
		self writeIdentifier: clause first on: stream.
		stream << clause second.
		clause third beWrittenBy: self on: stream ] separatedBy: [ stream << ' AND ' ]