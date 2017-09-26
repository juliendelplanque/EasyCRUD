queries generation
serializeInsertQuery: anECRUDInsertQuery
	| assoc columnIdentifiers values |
	assoc := anECRUDInsertQuery dataDict associations sorted: [ :a :b |
		a head identifierString < b head identifierString ].
	columnIdentifiers := assoc collect: #head.
	values := assoc collect: #tail.
	^ String streamContents: [ :stream |
		stream
			<< 'INSERT INTO ';
			<< (anECRUDInsertQuery tableIdentifier beSerializedBy: self);
			<< ' ('.
		columnIdentifiers do: [ :id | stream << (id beSerializedBy: self) ] separatedBy: [ stream << $, ].
		stream
			<< ') VALUES ('.
		self writeValues: values on: stream. 
		stream << ');' ]