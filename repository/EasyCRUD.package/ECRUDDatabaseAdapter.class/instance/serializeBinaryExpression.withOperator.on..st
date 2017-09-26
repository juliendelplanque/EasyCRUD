private - query generation
serializeBinaryExpression: anECRUDBinaryExpression withOperator: operator on: stream
	stream
		<< (anECRUDBinaryExpression left beSerializedBy: self);
		<< operator;
		<< (anECRUDBinaryExpression right beSerializedBy: self)