queries generation
serializeGreaterExpression: anECRUDGreater
	^ String streamContents: [ :stream |
		self serializeBinaryExpression: anECRUDGreater withOperator: $> on: stream ]