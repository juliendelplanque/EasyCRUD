queries generation
serializeGreaterOrEqualExpression: anECRUDGreaterOrEqual
	^ String streamContents: [ :stream |
		self serializeBinaryExpression: anECRUDGreaterOrEqual withOperator: '>=' on: stream ]