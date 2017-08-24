queries generation
serializeInsertQuery: anECRUDInsertQuery
	| assoc columnNames values |
	assoc := anECRUDInsertQuery dataDict associations sorted: [ :a :b | a head < b head ].
	columnNames := assoc collect: #head.
	values := assoc collect: #tail.
	^ String streamContents: [ :stream |
		stream
			<< 'INSERT INTO ';
			<< anECRUDInsertQuery tableIdentifier;
			<< ' ('.
		self writeIdentifiers: columnNames on: stream. 
		stream
			<< ') VALUES ('.
		self writeValues: values on: stream. 
		stream << ');' ]