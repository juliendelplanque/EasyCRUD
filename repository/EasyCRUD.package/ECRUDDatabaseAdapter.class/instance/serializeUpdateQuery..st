queries generation
serializeUpdateQuery: anECRUDUpdateQuery
	^ String streamContents: [ :stream |
		stream << 'UPDATE '.
		self writeIdentifier: anECRUDUpdateQuery tableIdentifier on: stream.
		stream << ' SET '.
		(anECRUDUpdateQuery dataDict associations sorted: [ :a :b | a head < b head ])
			do: [ :assoc |
				self writeIdentifier: assoc head on: stream.
				stream << $=.
				self writeValue: assoc tail on: stream ]
			separatedBy: [ stream << $, ].
		self serializeWhereClauseOf: anECRUDUpdateQuery on: stream.
		stream << $; ]