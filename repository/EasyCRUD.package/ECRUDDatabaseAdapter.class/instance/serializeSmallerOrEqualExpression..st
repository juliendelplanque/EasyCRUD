queries generation
serializeSmallerOrEqualExpression: anECRUDSmallerOrEqual
	^ String streamContents: [ :stream |
		self serializeBinaryExpression: anECRUDSmallerOrEqual withOperator: '<=' on: stream ]