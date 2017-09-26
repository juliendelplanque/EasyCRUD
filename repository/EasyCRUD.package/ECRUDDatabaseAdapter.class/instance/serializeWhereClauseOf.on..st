private - query generation
serializeWhereClauseOf: anECRUDQuery on: stream
	anECRUDQuery hasWhereClause
		ifFalse: [ ^ self ].
	stream << ' WHERE '.
	anECRUDQuery whereClause do: [ :clause |
		stream
			<< (clause first asECRUDIdentifier beSerializedBy: self);
			<< clause second;
			<<	(clause third beSerializedBy: self) ] separatedBy: [ stream << ' AND ' ]