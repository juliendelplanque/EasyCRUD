queries generation
serializeSmallerExpression: anECRUDSmaller
	^ String streamContents: [ :stream |
		self serializeBinaryExpression: anECRUDSmaller withOperator: $< on: stream ]