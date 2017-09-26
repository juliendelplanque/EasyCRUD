private - query generation
serializeOrderByClauseOf: anECRUDQuery on: stream
	anECRUDQuery hasOrderByField
		ifFalse: [ ^ self ].
	stream
		<< ' ORDER BY ';
		<< (anECRUDQuery orderByField beSerializedBy: self);
		<< ' ';
		<< anECRUDQuery orderByDirection