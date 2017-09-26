queries generation
serializeUpdateQuery: anECRUDUpdateQuery
	^ String streamContents: [ :stream |
		stream
			<< 'UPDATE ';
			<< (anECRUDUpdateQuery tableIdentifier beSerializedBy: self);
			<< ' SET '.
		(anECRUDUpdateQuery dataDict associations sorted: [ :a :b |
				a head identifierString < b head identifierString ])
			do: [ :assoc |
				stream
					<< (assoc head beSerializedBy: self);
					<< $=;
					<< (assoc tail beSerializedBy: self) ]
			separatedBy: [ stream << $, ].
		self
			serializeWhereClauseOf: anECRUDUpdateQuery on: stream.
		stream << $; ]