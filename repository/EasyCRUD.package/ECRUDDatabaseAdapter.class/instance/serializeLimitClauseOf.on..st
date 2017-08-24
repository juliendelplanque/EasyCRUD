private - query generation
serializeLimitClauseOf: anECRUDQuery on: stream
	anECRUDQuery hasLimit
		ifFalse: [ ^ self ].
	stream
		<< ' LIMIT ';
		<< anECRUDQuery limitSize.
	anECRUDQuery hasOffset
		ifFalse: [ ^ self ].
	stream
		<< ' OFFSET ';
		<< anECRUDQuery offset